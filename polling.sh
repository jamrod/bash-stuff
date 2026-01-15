#!/bin/bash
exId=$1
echo ${exId}
polling=true

while $polling
do
    status=$(aws ssm get-automation-execution --automation-execution-id 291379e6-d84f-4200-83ac-640b15819f00 | jq .AutomationExecution.AutomationExecutionStatus)
    if [[ ${status} != '"InProgress"' ]]; then
        echo Status : ${status}
        polling=false
        break;
    fi
    sleep 60
done
