
#creating the ec2 instance using cli


aws ec2 run-instances 
   --image-id ami-0220d79f3f480ecf5
   --count 1 
   --instance-type t3.micro 
   --security-group-ids sg-0e7d900a99b8de008
   --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Narsi}]'