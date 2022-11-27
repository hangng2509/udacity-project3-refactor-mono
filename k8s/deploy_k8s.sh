kubectl delete deploy api-user
kubectl delete deploy api-feed
kubectl delete deploy reverseproxy
kubectl delete deploy frontend

# Apply env variables and secrets
kubectl apply -f aws-cre.yaml
kubectl apply -f env-secret.yaml
kubectl apply -f env-configmap.yaml
kubectl apply -f api-feed-deployment.yaml
kubectl apply -f api-user-deployment.yaml
kubectl apply -f reverseproxy-deployment.yaml
kubectl apply -f frontend-deployment.yaml