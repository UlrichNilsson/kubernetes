# Storage with synology nas

## On Synology NAS

* Activate NAS
* Add share
* Edit Rule

## On all k3s nodes

`sudo apt install nfs-common -y`

## Applay nfs-provisioner and RBAC

`kubectl apply -f ./test-pod.yaml`

`kubectl apply -f ./rbac.yaml`

<https://tuananh.org/2020/05/01/using-synology-nfs-as-external-storage-with-k8s/>

<https://medium.com/@josebiro/persistent-volume-claims-with-synology-nas-on-a-raspberry-pi-kubernetes-cluster-852fd5a0b158>
