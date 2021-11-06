#!/bin/bash
export EC2_EZ_SRC=$EC2_EZ_HOME/src

# print environment variables
echo "EC2_EZ_SRC=$EC2_EZ_SRC"

# execute
echo "delete-ec2-ez instance_type=$1 in region=$2 profile=$3"
aws cloudformation delete-stack --stack-name ec2-ez-$1 \
--region $2 \
--profile $3
