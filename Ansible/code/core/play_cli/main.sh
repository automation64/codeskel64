#!/bin/sh

ansible-playbook core/play_cli/main.yml \
	-e '{"param_number":100}' \
	-e '{"param_list_empty":[]}' \
	-e '{"param_list_number":[20,99]}'
