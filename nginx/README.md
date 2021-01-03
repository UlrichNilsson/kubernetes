# Nginx

## K3S nginx setup

`sudo kubectl apply -f ./deployment.yaml`  
`sudo kubectl apply -f ./nginx-nodeport.yaml`

## Reference

<https://kubernetes.io/docs/tasks/run-application/run-stateless-application-deployment/>

## Create deployment

`kubectl apply -f ./deployment.yaml`

## List the Pods created by the deployment

`kubectl get pods -l app=nginx`

## Update depllyment

`kubectl apply -f ./deployment-update.yaml`

## Create service

`kubectl apply -f ./nginx-svc.yaml`

## Get services

`kubectl get svc my-nginx`

`kubectl describe svc my-nginx`

`kubectl get ep my-nginx`
