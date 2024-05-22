cd worker/
docker build -t nathanbenais/worker .
docker push nathanbenais/worker
kubectl apply -f pod.yaml
# kubectl apply -f deployment.yaml
kubectl apply -f worker-mult-deployment.yaml
kubectl apply -f worker-add-deployment.yaml
kubectl apply -f worker-service.yaml
cd ..
cd planner/
docker build -t nathanbenais/planner .
docker push nathanbenais/planner
kubectl apply -f pod.yaml
kubectl apply -f planner-service.yaml