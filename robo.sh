#!/bin/bash

    AMI_ID="ami-0220d79f3f480ecf5"
    SG_ID="sg-062addd513def4ee9"

    for instance in $@

do 

      INSTANCE_ID=$(aws ec2 run-instances --image-id $AMI_ID --instance-type t3.micro --security-group- sg-062addd513def4ee9
    $SG_ID    --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$instance}]" --query 'Instance[0].InstanceId'  --output text)

    # gettin ip adress 

    if [ $instance != "frontend" ]; then 
        IP=$(aws describe-instances --instance-ids $INSTANCE_ID --query 'Reservation [0].Instance[0]. PrivateIpAdress' --output text )
   else 
      I P=$(aws describe-instances --instance-ids $INSTANCE_ID --query 'Reservation [0].Instance[0]. Pub;icIpAdress'   --output text )
   fi

     echo "$instance: $IP"

done 