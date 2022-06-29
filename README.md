# k8s-nginx-deployment
Basic nginx app deployment using Kubernetes eksctl.

# Prerequisite
The following tools need to be installed
* aws cli
* kubectl
* eksctl

Before running the script you should be logged in to your AWS account using aws cli and make sure `~/.aws/config` and `~/.aws/credentials` file are configured properly.

Set AWS_PROFILE environment variable.

This script creates the eks cluster and deploys the nginx application using kubectl deployment.
You can update the cluster name and other resource names.

It looks for ~/.ssh/id_rsa.pub key as it creates instances on the ec2 using this key which is used to ssh to the instance. Make sure you have the key in place.
# deploy.sh

* Creats the eks cluster using cluster.yaml file
* Deploys nginx application using kubectl. It uses deploy-nginx.yaml file for deployment.
* Exposes the nginx application to external ip using load balancer

# get-nginx-web-page.sh

Gets the external url to verify the nginx application deployment.

# delete-deployment.sh

Deletes the nginx deployment from the cluster.

# delete-cluster.sh

Deletes the eks cluster.
