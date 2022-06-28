# k8s-nginx-deployment
Basic nginx app deployment using Kubernetes eksctl.

# Prerequisite
Following tools need to be install
* aws cli
* kubectl
* eksctl

Before running script you should be logged into you aws account using aws cli and make sure ~/.aws/config and ~/.aws/credentials file are configured properly.

Set AWS_PROFILE environment variable.

This script creates the eks cluster and deploys the nginx application using kubectl deployemnt.
You can update the cluster name and resource names.