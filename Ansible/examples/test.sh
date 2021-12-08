#!/bin/sh

echo "Test Ansible code: $1"

ansible-playbook -D -v "${1}/main.yml"
