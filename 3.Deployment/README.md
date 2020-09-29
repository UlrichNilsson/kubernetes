# Create deployment

`kubectl create deployment hello-node --image=k8s.gcr.io/echoserver:1.4`

`kubectl get deployments`

`kubectl get pods`

`kubectl get events`

`kubectl config view`

`kubectl expose deployment hello-node --type=LoadBalancer --port=8080`

`kubectl get services`

`curl localhost:8080`

`kubectl get pod,svc -n kube-system`

## Clean up

`kubectl delete service hello-node`
`kubectl delete deployment hello-node`
