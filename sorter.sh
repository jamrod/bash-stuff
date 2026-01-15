#!/bin/bash

# Define an array
array=(5.0 2.1 1.8 1.0.0 3.24)

# Sort the array using the sort command
sorted_array=($(for i in "${array[@]}"; do echo $i; done | sort -n))

# Print the sorted array
echo "Sorted array: ${sorted_array[@]}"

tags="v0.0.2 v0.1 v0.2 v0.3.0 v0.0.3"
tags=($tags)
#
sorted_array=($(for i in "${tags[@]}"; do echo ${i}; done | sort -nr))

echo "Sorted array: ${sorted_array[@]}"
