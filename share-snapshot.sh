#!/bin/bash
set -x 
aws-runas techops-prod aws ec2 modify-snapshot-attribute \
 --snapshot-id snap-089aff05726e0c99b \
 --attribute createVolumePermission \
 --operation-type add \
 --user-ids 459089495665
