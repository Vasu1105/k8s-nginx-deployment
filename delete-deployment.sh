#!/bin/bash

# cleanup
kubectl delete service inspec-nginx-demo-service
kubectl delete -f ./deploy-nginx.yaml