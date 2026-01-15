#!/bin/bash
aws-runas tod aws ec2 describe-images \
    --query "sort_by(Images, &CreationDate)[-1]" \
    --filters \
    Name=name,Values="amzn2-ami-ecs-gpu-hvm-2.0.*-x86_64-ebs" \
    Name=virtualization-type,Values=hvm \
    Name=architecture,Values=x86_64 \
    Name=root-device-type,Values=ebs
 #    Name=owner-alias,Values=amazon \
 #     Name=owner-id,Values=801119661308 \
#     Name=owner-id,Values=125523088429
#     Name=name,Values="al2023-ami-2023*" \

# al2023-ami-ecs-gpu-hvm-2023.0.20250821-kernel-6.1-x86_64-ebs
