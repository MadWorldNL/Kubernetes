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

Setup Pi Hole
```shell
curl -sSL https://install.pi-hole.net | bash
```

* Turn off DHCP in route for IPv4.
* Set DHCPv6 server on stateless
* Set IPv6 DNS servers to the local ip of pi hole
* Turn onn DHCP in pi hole
* Reboot your router
* Reboot your devices


## Reference
[Install Kubernetes](https://ubuntu.com/kubernetes/install)\
[Install helm](https://helm.sh/docs/intro/install/)\
[Setup pi hole for dns](https://docs.pi-hole.net/main/basic-install/)\
[Stop Port 53](https://askubuntu.com/questions/191226/dnsmasq-failed-to-create-listening-socket-for-port-53-address-already-in-use)