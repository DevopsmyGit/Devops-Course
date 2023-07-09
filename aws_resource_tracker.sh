#!/bin/bash

# Author: Asran
# date: 11th of June 2023

# Version : v1.09

# This script will report AWS resourse usage
###############################

echo "List S3 buckets"
aws s3 ls

echo "List EC2 instances"
aws ec2 describe-instances
# To get only instance id in output
# aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


echo "List LAMBDA"
aws lambda list-functions

echo "IAM uses"
aws iam list-users
