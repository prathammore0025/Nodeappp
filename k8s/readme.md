```
kubectl delete secret mongo-secret
kubectl create secret generic mongo-secret \
  --from-literal=MONGODB_URI='mongodb+srv://prathm:<your_password>@prathm.dqbotpy.mongodb.net/?retryWrites=true&w=majority&appName=Prathm'
```

#🔄 After That:
Restart the deployment again:
```
kubectl rollout restart deployment node-app-deployment
```
Then check logs again:
```
kubectl get pods
```
