# math_functions.py

def power(base, exponent):
    return base ** exponent

def divide(numerator, denominator):
    if denominator == 0:
        raise ValueError("Cannot divide by zero.")
    return numerator / denominator

