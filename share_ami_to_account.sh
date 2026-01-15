#!/usr/bin/bash
# runas techops-dev

set -x
AMI=$1
ACCOUNT=$2

# get snap_id
SNAPID=$(aws ec2 describe-images --image-ids ${AMI} --output json | jq -r .Images[0].BlockDeviceMappings[0].Ebs.SnapshotId)

# modify image attributes, share
aws ec2 modify-image-attribute \
    --image-id ${AMI} \
    --attribute launchPermission \
    --operation-type add \
    --user-ids ${ACCOUNT}

# modify snapshot, share
aws ec2 modify-snapshot-attribute \
 --snapshot-id ${SNAPID} \
 --attribute createVolumePermission \
 --operation-type add \
 --user-ids ${ACCOUNT}
