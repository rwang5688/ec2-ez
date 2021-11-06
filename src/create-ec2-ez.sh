#!/bin/bash
export EC2_EZ_SRC=$EC2_EZ_HOME/src

# print environment variables
echo "EC2_EZ_SRC=$EC2_EZ_SRC"

# execute
echo "create-ec2-ez instance_type=$1 region=$2 profile=$3 project=$4"
aws cloudformation create-stack --stack-name ec2-ez-$1 \
--template-body file://$EC2_EZ_SRC/ec2-ez.yaml \
--capabilities CAPABILITY_NAMED_IAM CAPABILITY_AUTO_EXPAND \
--parameters file://ec2-ez-$1-parameters.json \
--region $2 \
--profile $3 \
--tags Key="Project",Value="$4"
