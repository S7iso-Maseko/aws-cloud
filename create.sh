#!/bin/bash

DIRECTORY_NAME="NACL"
mkdir -p $DIRECTORY_NAME

cd $DIRECTORY_NAME

touch "vpc.tf"
touch "instances.tf"
touch "nacl.tf"
touch "security-group.tf"
touch "subnet.tf"
touch "route-table.tf"
touch "internet-gateway.tf"

