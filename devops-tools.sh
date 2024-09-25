#! /usr/bin/env bash

# Install Ansible packages
sudo apt update && sudo apt install -y ansible

if [[ $? -ne 0 ]]; then
  echo "Ansible packages failed to install"
  exit 1
fi

# Install Terraform packages
sudo apt-get update && sudo apt-get install -y gnupg \
  software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update && sudo apt install -y terraform
terraform -help

if [[ $? -ne 0 ]]; then
  echo "Terraform packages failed to install"
  exit 1
fi

# Install kubectl packages
curl -LO "https://dl.k8s.io/release/$(curl -L -s \
  https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

if [[ $? -ne 0 ]]; then
  echo "kubectl packages failed to install"
  exit 1
fi

# Install helm packages
curl -fsSL -o get_helm.sh \
  https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
helm completion zsh > "${fpath[1]}/_helm"

if [[ $? -ne 0 ]]; then
  echo "helm packages failed to install"
  exit 1
fi

rm get_helm.sh

