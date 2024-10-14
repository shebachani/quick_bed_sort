# quick_bed_sort

The file standard_selection.tsv contains the selection criteria to filter from the input .bed files <br>
The snakemake pipepline in sorted_bed_files.smk calls the bash script from process_bed_files.sh which processes two .bed.gz files taking them and the selection file as input. <br>
It filters and sorts the content of the input files based on the order of chromosomes specified in the selection file and gives an output in a file within an output directoey,, which it creates. <br>
To run the snakemake pipeline, the following command is used " snakemake -s sorted_bed_files.smk -j 4" <br>
After the run, change to the output directory, which here will be created as "sorted_bed_file_per_sample" with the output file name "X_standard.sorted.bed"
