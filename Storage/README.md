# Storage with synology nas

## On Synology NAS

* Activate NAS
* Add share
* Edit Rule

## On all k3s nodes

`sudo apt install nfs-common -y`

### Rest nfs setup on synology nas

`sudo mkdir -p /nfs/general`  
`sudo mount 192.168.1.73:/volume1/k8s /nfs/general`  
`touch testfrompi`  
`df -h`  
<https://www.digitalocean.com/community/tutorials/how-to-set-up-an-nfs-mount-on-ubuntu-20-04>

## Applay nfs-provisioner and RBAC

`kubectl apply -f ./nfs-provisioner.yaml`

`kubectl apply -f ./rbac.yaml`

<https://tuananh.org/2020/05/01/using-synology-nfs-as-external-storage-with-k8s/>

<https://medium.com/@josebiro/persistent-volume-claims-with-synology-nas-on-a-raspberry-pi-kubernetes-cluster-852fd5a0b158>
