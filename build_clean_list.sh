#!/bin/bash

ARRAY=("$@")
echo ${ARRAY[@]}
LIST=$(for item in ${ARRAY[@]}; do printf '"'$item'",'; done)
echo ${LIST%,}
jq .[0] -s <<<[${LIST%,}]

gcloud projects add-iam-policy-binding pcm-vmi-prd \
    --member="serviceAccount:jcr-sand-sa@pcm-testerproject-sand.iam.gserviceaccount.com" \
    --role="roles/compute.imageUser"
