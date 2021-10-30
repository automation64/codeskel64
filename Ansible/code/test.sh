#!/bin/sh

echo "Test Ansible code: $1"

ansible-playbook "${1}/main.yml"
