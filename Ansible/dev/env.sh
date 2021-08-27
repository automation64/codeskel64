#!/bin/sh
#
# X_PROJECT_NAME_X development environment variables
#

# Project base location. Adjust to your local GIT repo
X_SHELL_PROJECT_ID_X_ROOT="$HOME/X_SHELL_PROJECT_PATH_X"
export X_SHELL_PROJECT_ID_X_ROOT

# Configuration options for dev tools
X_SHELL_PROJECT_ID_X_DEV="$X_SHELL_PROJECT_ID_X_ROOT/dev"
export X_SHELL_PROJECT_ID_X_DEV

# Ansible-Lint configuration
X_SHELL_PROJECT_ID_X_ANSIBLE_LINT="$X_SHELL_PROJECT_ID_X_DEV/ansible-lint.yml"
export X_SHELL_PROJECT_ID_X_ANSIBLE_LINT

# YAMLLinx configuration
YAMLLINT_CONFIG_FILE="$X_SHELL_PROJECT_ID_X_DEV/yamllint.yml"
export YAMLLINT_CONFIG_FILE
