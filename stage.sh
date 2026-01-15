#!/bin/bash
STAGE=$1
# if [[ ! "dev prod" =~ ${STAGE} ]]; then
#     echo 'Missing parameter, specify "dev" or "prod"'
# fi
echo ${STAGE}

if [[ "dev DEV Dev" =~ ${STAGE} ]]; then
    ACCOUNT=530786275774
    else if [[ "prod PROD Prod" =~ ${STAGE} ]]; then
        ACCOUNT=747207162522
    fi
fi

if [[ -z ${ACCOUNT} ]]; then
    echo 'Missing parameter, specify "dev" or "prod"'
fi
echo account ${ACCOUNT}
