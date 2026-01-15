#!/bin/bash
# pass in the file name and run from the folder containing the file
policyname=$1
policyres=$(aws iam list-policies --scope Local --query 'Policies[?PolicyName==`'${policyname%%.json}'`]' | jq .[0] ) # query AWS for the policy name and save response
if [[ $policyres != null ]]; then
    policyarn=$( jq .Arn <<< $policyres )
    policyver=$( jq .DefaultVersionId <<< $policyres )
    echo "updating ${policyname%%.json}"
    res=$(aws iam create-policy-version \
            --policy-arn ${policyarn//'"'} \
            --policy-document file://policies/${policyname} \
            --set-as-default)
    echo """$res"""
    # delete old default version
    res=$(aws iam delete-policy-version \
        --policy-arn ${policyarn//'"'} \
        --version-id ${policyver//'"'})
    echo """$res"""
else
    echo "Adding policy ${policyname%%.json}"
    res=$(aws iam create-policy \
        --policy-name ${policyname%%.json} \
        --policy-document file://policies/${policyname})
    echo """$res"""
fi
