#!/bin/bash
set -x 
aws-runas techops-prod aws ec2 modify-snapshot-attribute \
 --snapshot-id snap-0d58588d1af818908 \
 --attribute createVolumePermission \
 --operation-type add \
 --user-ids 459089495665