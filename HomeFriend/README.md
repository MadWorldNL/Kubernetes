### Environment names
- homefriend-development
- homefriend-production

### Helm Commands
Install cluster
```sh
helm install -f values.yaml -f environments/values-development.yaml homefriend-development .
```

Upgrade cluster
```sh
helm upgrade -f values.yaml -f environments/values-development.yaml homefriend-development .
```

Delete cluster
```sh
helm uninstall homefriend-development
```

### Minikube Commands
Start minikube
```sh
minikube start
```

Open dashboard
```sh
minikube dashboard
```

Setup nginx ingress
```sh
minikube addons enable ingress
```

### CloudNative
```shell
kubectl apply --server-side -f \
  https://raw.githubusercontent.com/cloudnative-pg/cloudnative-pg/release-1.23/releases/cnpg-1.23.1.yaml
```

## Reference
[Setup Postgresql](https://cloudnative-pg.io/documentation/1.23/installation_upgrade/)