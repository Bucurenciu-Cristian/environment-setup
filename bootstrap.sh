#!/bin/bash

# Clone the repository
git clone https://github.com/Bucurenciu-Cristian/environment-setup.git
cd environment-setup

# Install Ansible if not installed
if ! command -v ansible &> /dev/null
then
    sudo apt update
    sudo apt install -y ansible
fi

# Run the Ansible playbook
ansible-playbook playbook.yml --ask-become-pass
