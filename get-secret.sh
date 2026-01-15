#!/usr/local/bin/bash
# aws secretsmanager get-secret-value --secret-id $1  --query SecretString["token"] --output text
aws secretsmanager get-secret-value --secret-id $1  | jq .
