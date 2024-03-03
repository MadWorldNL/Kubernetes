#!/bin/bash
sudo microk8s kubectl -n default rollout restart deploy
sudo microk8s kubectl -n MadWorldNL rollout restart deploy

# When new migration is added, then run the following command
sudo microk8s kubectl rollout restart deployment madworld-identity-grpc-deployment -n MadWorldNL