# My-Nginx

## Reference

<https://kubernetes.io/docs/concepts/services-networking/connect-applications-service/>

## Apply deployment

`kubectl apply -f ./run-my-nginx.yaml`

## Get pods based on labels

`kubectl get pods -l run=my-nginx -o wide`

## Get pods IPs based on label

`kubectl get pods -l run=my-nginx -o yaml | grep podIP`

## Create service

`kubectl apply -f ./nginx-svc.yaml`

## Get service

`kubectl get svc my-nginx`

## Describe service

`kubectl describe svc my-nginx`

## Get endpoint

`kubectl get ep my-nginx`

## curl

`curl http://10.98.71.173:80`
