#!/bin/bash

# Update PATH
PATH=$PATH:/usr/local/bin/
yum install python3-pip -y
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
rm -Rf alpinehelloworld || echo "folder already deleted"
rm -Rf /root/deployment || echo "folder already deleted"
aws s3 cp s3://alpinehelloworld-aws-devops-codebuild-ci/release/kustomization.yaml /root/deployment/
