kubectl create -f k8s/deployment-app-simple.yaml
echo "kubectl create -f k8s/deployment-app-simple.yaml"

kubectl create -f k8s/service-app.yaml
echo "kubectl create -f k8s/service-app.yaml"

echo "Deployment and Service are created visit the app via this curl"
echo "curl http://192.168.99.100:30211/hey"

kubectl get po -owide -w
