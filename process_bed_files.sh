ss_bed_files.sh

# Input files
A_BED=$1
B_BED=$2
SELECTION=$3
OUTPUT=$4

# Create the output directory if it doesn't exist
mkdir -p $(dirname "$OUTPUT")

# Debugging: Print input file paths
echo "Processing $A_BED and $B_BED using selection $SELECTION"
echo "Output file will be written to $OUTPUT"

# Process the bed files and log how many lines match the selection
zcat "$A_BED" "$B_BED" | grep -wFf "$SELECTION" | sort -k1,1 -k2,2n > "$OUTPUT"

# Debugging: Check the number of lines in the output file
echo "Number of lines in the output file:"
wc -l "$OUTPUT"
