#!/bin/bash

# Check for yq installation
if ! command -v yq &> /dev/null
then
    echo "yq could not be found, please install it."
    exit
fi

# URL to download the XML file
XML_URL="https://www.six-group.com/dam/download/financial-information/data-center/iso-currrency/lists/list-one.xml"

# Input and output files
INPUT_FILE="temp.xml"
OUTPUT_DIR="test/data"  # Specify the output directory
OUTPUT_FILE="$OUTPUT_DIR/currencies.json"  # Append the current date in YYYY-MM-DD format

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Download the XML file
echo "Downloading XML file from $XML_URL..."
curl -o "$INPUT_FILE" "$XML_URL"

# Check if download was successful
if [[ $? -ne 0 ]]; then
    echo "Failed to download XML file."
    exit 1
fi

# Convert XML to YAML and extract relevant data using yq
# Filter out entries with a minor_units entry of "N.A." e.g. Silver, Gold
# Filter out entries with isFund=true attribute
echo "Extracting data to $OUTPUT_FILE..."
yq -o=json '.ISO_4217.CcyTbl.CcyNtry |
    (.[].CtryNm | key) = "country" |
    (.[].CcyNm | key) = "display_name" |
    (.[].Ccy | key) = "alpha_code" |
    (.[].CcyNbr | key) = "numeric_code" |
    (.[].CcyMnrUnts | key) = "minor_units" |
    filter(.alpha_code != null) |
    filter(.numeric_code != null) |
    filter(.minor_units != null) |
    filter(.minor_units != "N.A.") |
    filter(.display_name.+@IsFund != true) |
    (.[].minor_units) |= from_yaml
' "$INPUT_FILE" > "$OUTPUT_FILE"


# Delete the temporary input file
rm "$INPUT_FILE"
echo "Temporary XML file deleted."

echo "Conversion complete! The CSV is saved as $OUTPUT_FILE"