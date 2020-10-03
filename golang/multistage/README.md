# GoLang multistage

`docker build -t kuard .`

`docker run --rm -p 8080:8080 kuard`

`docker tag kuard gcr.io/kuar-demo/kuard-amd64:blue`

`docker push gcr.io/kuar-demo/kuard-amd64:blue`
