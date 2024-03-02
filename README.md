# [Backstage](https://backstage.io)

This is your newly scaffolded Backstage App, Good Luck!

To start the app, run:

```sh
yarn install
yarn dev
```


 eval $(minikube docker-env)
 yarn build-image --tag backstage:1.0.0
 docker images
 kubectl apply -f kubernetes/backstage.yaml
 kubectl get deployments --namespace=backstage
 
 kubectl get pods --namespace=backstage
 
 kubectl logs --namespace=backstage -f backstage-557cff7d76-fz5k9 -c backstage
 
 9187  kubectl apply -f kubernetes/backstage-service.yaml

 9188  sudo kubectl port-forward --namespace=backstage svc/backstage 80:80