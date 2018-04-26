### Install minikube

#### OS X

```
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.26.1/minikube-darwin-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
```
### Start the minikube VM

```
minikube start
```

If this is the first time you're running this, you might have to wait a while for minikube to download the VM image.

#### Other Useful Commands

`minikube ssh` — Establishes an SSH connection to the minikube VM
 
`minikube docker-env` — Sets up environment variables to point your Docker cli to the minikube Docker server. Use as follows: `eval $(minikube docker-env)`
 
`minikube dashboard` — Opens the browser to the minikube Kubernetes dashboard

### Explore the Kubernetes API

```
kubectl proxy
```

Then open http://localhost:8001
