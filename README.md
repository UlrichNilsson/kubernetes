# kubernetes

Learning kubernetes

Kubernetes on github
<https://github.com/kubernetes/kubernetes>

Coursera lab

<https://github.com/googlecodelabs/orchestrate-with-kubernetes>

## GKE

### Create cluster

```bash
gcloud container clusters create jenkins-cd \
  --num-nodes 2 \
  --machine-type n1-standard-2 \
  --cluster-version latest \
  --zone us-east1-d \
  --service-account "jenkins-sa@$GOOGLE_CLOUD_PROJECT.iam.gserviceaccount.com"
  ´´´
