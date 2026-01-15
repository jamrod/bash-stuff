#!/bin/bash
# Clean up old branches in a git repo
# run from root directory of a git repo, pass in names of branches to keep separated by spaces
SAFE_BRANCHES=("main" "develop" "dev") # branches to always protect
if [[ -z $1 ]]; then # if there are no arguments then only protect SAFE_BRANCHES
    keep_branches=${SAFE_BRANCHES[@]}
    else
    keep_branches=(${SAFE_BRANCHES[@]} ${@}) # else add any branches passed in to protected list
fi

# get all the branches except the current branch
all_branches=$(git --no-pager branch --no-contains)

for branch in ${all_branches[@]}; do # loop through all the branches
    pattern="\b${branch}\b"
    echo ${keep_branches[@]} | grep -E $pattern # using the pattern prevents partial matches like "dev" matching on "develop"
if [[ $? == 0 ]]; then # if the branch is in the keep list do nothing
        echo "${branch} is kept"
        continue
    else
        echo "deleting ${branch}" # else delete the branch
        git branch -D ${branch}
    fi
done

echo Complete!
