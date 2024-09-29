#!/bin/bash

if ! command -v yq &> /dev/null
then
    echo "yq could not be found, please install it."
    exit
fi

DATA_XML_URL="https://www.six-group.com/dam/download/financial-information/data-center/iso-currrency/lists/list-one.xml"

INPUT_FILE="temp.xml"
OUTPUT_DIR="test/data"
OUTPUT_FILE="$OUTPUT_DIR/currencies.json"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

echo "Downloading XML file from $DATA_XML_URL..."
curl -o "$INPUT_FILE" "$DATA_XML_URL"

if [[ $? -ne 0 ]]; then
    echo "Failed to download XML file."
    exit 1
fi

# Convert XML to JSON and extract relevant data using yq
# Filter out entries with a minor_units entry of "N.A." e.g. Silver, Gold
# Filter out entries with isFund=true attribute
echo "Extracting data to $OUTPUT_FILE..."
yq -oj '.ISO_4217.CcyTbl.CcyNtry |
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

rm "$INPUT_FILE"
echo "Temporary XML file deleted."

echo "Conversion complete! The JSON is saved as $OUTPUT_FILE"