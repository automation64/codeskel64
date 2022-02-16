#!/bin/sh

ansible-playbook core/inventory_jinja/main.yml \
	-i core/inventory_jinja/inventories/hosts.ini