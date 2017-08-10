# omaha-ruby-meetup-8-10-2017
Notes and code from the Omaha ruby meetup

Install Hypervisor
brew install docker-machine-driver-xhyve
docker-machine-driver-xhyve need root owner and uid
sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve

Install Minikube
https://kubernetes.io/docs/tasks/tools/install-minikube/#install-minikube

curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.21.0/minikube-darwin-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/

minikube start

### Gets a list of nodes in your cluster
```kubectl get no```

### Gets a list of pods in your cluster
```kubectl get po```

### Gets a list of services in your cluster
```kubectl get svc```

### Deploy your app
```kubectl create -f k8s/deployment-app-simple.yaml```

### Expose your app via a service and NodePort(Opens a port on any Node and routes traffic to your pod)
```kubectl create -f k8s/service-app.yaml```

### Gets a list of pods in your cluster
```kubectl get po```
> You should see your Pod

### Gets a list of services in your cluster
```kubectl get svc```
> You should see your service along with the port that is listening

### A quick way to get to your NodePort
```kubectl get service dans-ruby-app --output='jsonpath="{.spec.ports[0].nodePort}"'```

### Returns the IP of your Cluster's Node
```minikube ip```

### Open the browser with the IP 
```192.168.99.100:NodePort```
> ex 192.168.99.100:32058

### Update the number of replicas in your deployment
```kubectl replace -f k8s/deployment.yaml
kubectl get po -owide -w```

