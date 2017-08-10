kubectl create -f k8s/deployment-app.yaml
echo "kubectl create -f k8s/deployment-app.yaml"

kubectl create -f k8s/service-app.yaml
echo "kubectl create -f k8s/service-app.yaml"

kubectl create -f k8s/deployment-db.yaml
echo "kubectl create -f k8s/deployment-db.yaml"

kubectl create -f k8s/service-db.yaml
echo "kubectl create -f k8s/service-db.yaml"

echo "Apply some load to the server to see it in action"
echo "siege -t 50s http://192.168.99.100:30211/applyload"
kubectl get po -owide -w
