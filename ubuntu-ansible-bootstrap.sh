#! /bin/bash
# This script is used to bootstrap an Ubuntu 20.04 server with Ansible
# and the required dependencies to run the Ansible playbooks in this
# repository.

# Install Ansible:
sudo apt-get update && sudo apt-get install -y software-properties-common  python3-pip python3 neovim
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get install -y ansible

# Run the Ansible playbook k8s-common.yml:
ansible-playbook k8s-common.yml -i ./ansible/hosts