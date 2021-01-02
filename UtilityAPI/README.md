# UtilityAPI

## Build docker imagte

`docker build -t ulrichnilsson/k3sutilityapi:latest .`

## Push image to docker hub

`docker push ulrichnilsson/k3sutilityapi:latest`

## From arm

### Build image

`sudo docker build -f arm.Dockerfile . -t ulrichnilsson/utilityapi`

### Push image

`sudo docker push ulrichnilsson/utilityapi`

### Deploy to k3s

`sudo kubectl apply -f ./deployment.yaml`  
`sudo kubectl apply -f ./nodeport.yaml`
