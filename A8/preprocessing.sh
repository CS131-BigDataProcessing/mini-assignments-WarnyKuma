#!/bin/bash

# Set dataset name
input_file="AB_NYC_2019.csv"
output_file="cleaned_AB_NYC_2019.csv"

# Step 1: Remove trailing spaces and newlines
sed -i 's/[[:space:]]*$//' "$input_file"

# Step 2: Replace missing values with NA
sed -i 's/,,/,NA,/g; s/,$/,NA/' "$input_file"

# Step 3: Remove rows with missing values (if applicable)
awk -F ',' 'NF==16' "$input_file" > "$output_file"

# Step 4: Remove duplicates based on 'id'
awk -F ',' '!seen[$1]++' "$output_file" > temp && mv temp "$output_file"

# Step 5: Identify outliers in price (e.g., mean ± 3*stddev)
mean_stddev=$(awk -F ',' '{sum+=$10; sumsq+=($10)^2} END {mean=sum/NR; stddev=sqrt(sumsq/NR - mean^2); print mean, stddev}' "$output_file")
mean=$(echo $mean_stddev | cut -d' ' -f1)
stddev=$(echo $mean_stddev | cut -d' ' -f2)
awk -F ',' 'NR==1 || ($10 >= mean-3*stddev && $10 <= mean+3*stddev)' mean="$mean" stddev="$stddev" "$output_file" > temp && mv temp "$output_file"

echo "Data cleaning complete. Output file: $output_file"

