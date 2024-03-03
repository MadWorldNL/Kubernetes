#!/bin/bash

sudo microk8s kubectl apply -f Environment/Config.yaml
sudo microk8s kubectl apply -f Environment/Secrets/Secrets-Prod.yaml
sudo microk8s kubectl apply -f External
sudo microk8s kubectl apply -f Internal
sudo microk8s kubectl apply -f Environment/Ingress-Deployment-Prod.yaml