#!/bin/bash
output=""
non_access_denied=""
for err_file in ~/ssm-errors/*; do
    cat ${err_file} | grep -q "(AccessDenied)" # check if error was AccessDenied
    if [[ $? ]]; then
        account=$(cat ${err_file} | grep -o -m1 -E 'arn:aws:iam::[0-9]{12}:role/PCMCloudAdmin' | grep -o -E '[0-9]{12}') # get account number access was denied to
        output=$(printf "${output}\n${account}")
        else
        non_access_denied=$(printf "${non_access_denied}\n${err_file}") # collect any other errors
    fi
done

echo "${output}" | sort -u > ~/check_accounts  # use sort to remove duplicates and output to file
echo ${non_access_denied}
