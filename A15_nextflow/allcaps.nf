#!/usr/bin/env nextflow

// Log the Nextflow version
log.info "Running ALLCAPS pipeline with Nextflow v$nextflow.version"

// Main process
process ConvertToUpperCase {
    input:
    val inputString from params.inputString

    output:
    stdout into output

    script:
    """
    echo "\$inputString" | tr '[:lower:]' '[:upper:]'
    """
}

output.view { it.trim() }
