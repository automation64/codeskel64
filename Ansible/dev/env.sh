#!/bin/sh
#
# __PROJECT_NAME__ development environment variables
#

# Project base location. Adjust to your local GIT repo
__PROJECT_ID_CAPS___ROOT="$HOME/__PROJECT_PATH__"
export __PROJECT_ID_CAPS___ROOT

# Configuration options for dev tools
__PROJECT_ID_CAPS___DEV="$__PROJECT_ID_CAPS___ROOT/dev"
export __PROJECT_ID_CAPS___DEV

# Ansible-Lint configuration
__PROJECT_ID_CAPS___ANSIBLE_LINT="$__PROJECT_ID_CAPS___DEV/ansible-lint.yml"
export __PROJECT_ID_CAPS___ANSIBLE_LINT

# YAMLLinx configuration
YAMLLINT_CONFIG_FILE="$__PROJECT_ID_CAPS___DEV/yamllint.yml"
export YAMLLINT_CONFIG_FILE
