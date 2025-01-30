#!/bin/bash


######################
# Author: Vrushalee
# Date: 28-01-2025
# Version: v1
# This script will report the AWS resource usage
######################

set -x

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM users



#list S3 buckets
echo "Print list of S3 Buckets"
aws s3 ls > /home/ubuntu/resourceTracker.txt

#list EC2 instances
echo "Print list of EC2 instances"
aws ec2 describe-instances --query "Reservations[*].Instances[*].InstanceId" >> /home/ubuntu/resourceTracker.txt


# list lambda
echo "Print list of Lambda functions"
aws lambda list-functions >> /home/ubuntu/resourceTracker.txt

# list IAM users
echo "Print list of IAM Users"
aws iam list-users >> /home/ubuntu/resourceTracker.txt
