#!/bin/bash

AMI_ID="ami-0220d79f3f480ecf5"
SG_ID="sg-062addd513def4ee9"

for instance in $@
do
    aws ec2 run-instances 
    --image-id ami-0220d79f3f480ecf5
    --instance-type t3.micro 
    --security-group- sg-062addd513def4ee9
    --tag-specifications'ResourceType=instance,Tags=[{Key=Name,Value=Test}]' 
    --query 'Instances[0].InstanceId 
    --output text  
done 
