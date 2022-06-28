#!/bin/bash

# create the cluster
eksctl create cluster -f cluster.yaml

# add the nginx containers
kubectl apply -f ./deploy-nginx.yaml

# expose the nginx containers
kubectl expose deployment/inspec-nginx-demo-app \
        --port=80 --target-port=80 \
        --name=inspec-nginx-demo-service --type=LoadBalancer