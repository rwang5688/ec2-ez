#!/bin/bash
export EC2_EZ_SRC=$EC2_EZ_HOME/src

# print environment variables
echo "EC2_EZ_SRC=$EC2_EZ_SRC"

# execute
echo "validate-ec2-ez"
aws cloudformation validate-template \
--template-body file://$EC2_EZ_SRC/ec2-ez.yaml
