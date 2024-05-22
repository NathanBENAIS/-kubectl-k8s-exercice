docker rmi nathanbenais/worker
docker rmi nathanbenais/planner

cd worker/
kubectl delete -f pod.yaml
# kubectl delete -f deployment.yaml
kubectl delete -f worker-add-deployment.yaml
kubectl delete -f worker-mult-deployment.yaml
kubectl delete -f worker-service.yaml

cd ..
cd planner/
kubectl delete -f pod.yaml
kubectl delete -f planner-service.yaml
