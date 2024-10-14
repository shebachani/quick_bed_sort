SAMPLE = "X"
SELECTION = "standard_selection.tsv"  # Ensure this file exists at the specified location
OUTPUT_DIR = "sorted_bed_file_per_sample"

rule all:
    input:
        f"{OUTPUT_DIR}/{SAMPLE}_standard.sorted.bed"

rule process_bed_files:
    input:
        a_bed="shuf.a.bed.gz",  # Ensure the file path is correct
        b_bed="shuf.b.bed.gz",  # Ensure the file path is correct
        selection=SELECTION     # Ensure standard_selection.tsv exists
    output:
        f"{OUTPUT_DIR}/{SAMPLE}_standard.sorted.bed"
    shell:
        """
        mkdir -p {OUTPUT_DIR}
        ./process_bed_files.sh {input.a_bed} {input.b_bed} {input.selection} {output}
        """

