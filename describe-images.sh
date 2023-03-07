#!/bin/bash

aws-runas techops-dev aws ec2 describe-images \
    --filters \
    Name=name,Values=Windows_Server-2019-English-Full-ECS_Optimized-* \
    Name=virtualization-type,Values=hvm \
    Name=owner-id,Values=990736445056,801119661308 \
    Name=architecture,Values=x86_64
