# Lab

`kubectl run nginx --image=nginx --dry-run=client -o yaml > nginx-pod.yaml`

Clean up yaml

`kubectl apply -f nginx-pod.yaml`


