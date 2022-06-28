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

# deploy.sh

* Creats the ekscluster using cluster.yaml file
* Deployes nginx application using kubectl. It uses deploy-nginx.yaml file for deployemnt details.
* Exposes the nginx application to external ip using load balancer

# get-nginx-web-page.sh

Gets the external url to verify the nginx application deployment.

# delete-deployment.sh

Deletes the nginx deployment from the cluster.

# delete-cluster.sh

Deletes the eks cluster.
