#!/bin/bash

regions=$(aws-runas techops-dev aws ec2 describe-regions | jq '.Regions[].RegionName')
for item in ${regions[@]}; do
    echo ${item};
    aws-runas techops-prod aws ec2 describe-images --image-id ami-001d3922ac49acaf7 --region ${item//'"'/}
    done
