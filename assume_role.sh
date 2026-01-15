#!/bin/bash

ROLEARN=${1}
unset $AWS_ACCESS_KEY
unset $AWS_SECRET_ACCESS_KEY
unset $AWS_SESSION_TOKEN
eval "$(aws sts assume-role --role-arn ${ROLEARN} --duration-seconds 3600 --role-session-name "CI-${RANDOM}" | jq -r '.Credentials|@sh "aws_secret=\(.SecretAccessKey) aws_session=\(.SessionToken) expiration=\(.Expiration) aws_key=\(.AccessKeyId)"')"
export AWS_ACCESS_KEY_ID=${aws_key}
export AWS_SECRET_ACCESS_KEY=${aws_secret}
export AWS_SESSION_TOKEN=${aws_session} >/dev/null
