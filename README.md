# Kubernetes
## Tools installed
* Curl
* Microk8s
* Helm
* Dnsmasq

## Install Guide

Install kubernetes on Ubuntu
```shell
sudo snap install microk8s --classic
```

Enable the following features in microk8s
```shell
sudo microk8s enable dashboard
sudo microk8s enable dns
sudo microk8s enable registry
sudo microk8s enable helm
sudo microk8s enable ingress
```

Install helm
```shell
curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
sudo apt-get install apt-transport-https --yes
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm
```

Dnsmasq cannot run at the same time as systemd-resolved. So it needs to turn off.

Turn off systemd-resolved
```shell
sudo systemctl stop systemd-resolved
sudo systemctl disable systemd-resolved
sudo systemctl mask systemd-resolved
```

Turn on systemd-resolved
```shell
sudo systemctl unmask systemd-resolved
sudo systemctl enable systemd-resolved
sudo systemctl start systemd-resolved
```

## Reference
[Install Kubernetes](https://ubuntu.com/kubernetes/install)\
[Install helm](https://helm.sh/docs/intro/install/)\
[Setup Dnsmasq](https://www.howtogeek.com/devops/how-to-run-your-own-dns-server-on-your-local-network/)\
[Stop Port 53](https://askubuntu.com/questions/191226/dnsmasq-failed-to-create-listening-socket-for-port-53-address-already-in-use)