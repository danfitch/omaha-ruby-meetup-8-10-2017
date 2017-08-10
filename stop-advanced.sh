kubectl delete -f k8s/deployment-app.yaml
echo "kubectl delete -f k8s/deployment-app.yaml"

kubectl delete -f k8s/service-app.yaml
echo "kubectl delete -f k8s/service-app.yaml"

kubectl delete -f k8s/service-db.yaml
echo "kubectl delete -f k8s/service-db.yaml"

kubectl delete -f k8s/deployment-db.yaml
echo "kubectl delete -f k8s/deployment-db.yaml"
