#!/bin/bash

# cleanup
kubectl delete service vasundhara-nginx-service
kubectl delete -f ./deploy-nginx.yaml