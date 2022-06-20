#!/bin/bash

kubectl get svc vasundhara-nginx-service

lb_url="$(kubectl get svc vasundhara-nginx-service | \
            grep vasundhara-nginx-service | \
            awk '{print $4}')"

curl -k $lb_url

echo $lb_url