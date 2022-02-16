#!/bin/sh

ansible-playbook core/inventory_hostvars/main.yml \
	-i core/inventory_hostvars/inventories/hosts.ini