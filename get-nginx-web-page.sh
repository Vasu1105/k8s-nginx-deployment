#!/bin/bash

kubectl get svc inspec-nginx-demo-service

lb_url="$(kubectl get svc inspec-nginx-demo-service | \
            grep inspec-nginx-demo-service | \
            awk '{print $4}')"

curl -k $lb_url

echo $lb_url