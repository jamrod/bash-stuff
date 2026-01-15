#!/bin/bash
#
# TFSTATE_BUCKET=BLAH
# while read LINE; do
#     newline=$(eval echo $LINE)
#     echo $newline
# done < read_test_file

echo "" > main.tf
while read LINE; do
    newline=$(eval echo """$LINE""")
    echo $newline >> main.tf
done < configs/main_template
