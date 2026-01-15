#!/bin/bash
if [ ${1} = 'dev' ]
    then
      stage=dev
      role=devinator
  elif [ ${1} = 'prod' ]
    then
      stage=prod
      role=govinator
  else
    echo invalid argument $1 try dev or prod
    exit 1
fi

echo stage $stage, role $role

CREATEPOLICIES=$2
if [ ${CREATEPOLICIES} = '--create-policies' ]
    then
        echo create policies
    else
        echo wont do it
fi
