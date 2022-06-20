#!/bin/bash

# create the cluster
eksctl create cluster -f cluster.yaml

# add the nginx containers
kubectl apply -f ./deploy-nginx.yaml 

# expose the nginx containers
kubectl expose deployment/vasundhara-nginx \
        --port=80 --target-port=80 \
        --name=vasundhara-nginx-service --type=LoadBalancer