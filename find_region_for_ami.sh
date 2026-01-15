#!/bin/bash
# find what region an ami is in
ami_id=$1

regions=$(aws-runas top aws ec2 describe-regions --all-regions --query "Regions[].RegionName" --output text)
for region in ${regions}; do
    res=$(aws-runas top aws ec2 describe-images --image-ids=${ami_id} --region $region 2>/dev/null)
    if [[ -n $res ]]; then
        images=$(jq .Images <<< $res)
        if [[ $(jq 'length > 0' <<< $images) == "true" ]]; then
            printf "$res \n---> Found ${ami_id} in ${region} <---\n"
        fi
    else
            echo "Not in $region"
    fi
done
