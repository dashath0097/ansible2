#!/bin/bash

# Store the SSH private key in a file
echo "$ANSIBLE_PRIVATE_KEY_FILE" | tr -d '\r' > /mnt/workspace/source/ansible_key.pem
chmod 600 /mnt/workspace/source/ansible_key.pem

# Run Ansible playbook
ansible-playbook -i inventory/aws_ec2.yml playbook.yml
