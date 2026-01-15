#!/bin/bash

aws logs filter-log-events \
    --log-group-name /aws/lambda/pcm_ami_bakery_publish_lambda \
    --start-time 1713193200000 \
    --filter-pattern="Error caught in set_ssm_parameter for account"   # can't use : in filter-pattern




# aws logs filter-log-events \
#     --log-group-name /aws/lambda/pcm_ami_cleaner_lambda \
#     --filter-pattern="Deleted the following Snapshots"  # can't use : in filter-pattern
#     --start-time 1674846060000
#     --region "us-east-2"
