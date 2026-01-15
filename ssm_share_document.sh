#!bin/bash
# share ssm documents
aws ssm modify-document-permission --name test_doc --permission-type Share --account-ids-to-add 530786275774
