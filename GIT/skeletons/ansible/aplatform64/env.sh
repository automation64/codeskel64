#!/bin/sh
#
# APlatform64 development environment variables
#

# Project base location. Adjust to your local GIT repo
APLATFORM64_ROOT="$HOME/git/aplatform64"
export APLATFORM64_ROOT

# Temporary collections for dev/test
APLATFORM64_BUILD="$APLATFORM64_ROOT/build"
export APLATFORM64_BUILD

# SerDigital64 collections
APLATFORM64_COLLECTIONS="$APLATFORM64_ROOT/collections/serdigital64"
export APLATFORM64_COLLECTIONS

# Collections ready for publishing to Galaxy
APLATFORM64_DIST="$APLATFORM64_ROOT/dist"
export APLATFORM64_DIST

# Configuration options for dev tools
APLATFORM64_DEV="$APLATFORM64_ROOT/dev"
export APLATFORM64_DEV

# Ansible-Lint configuration
APLATFORM64_ANSIBLE_LINT="$APLATFORM64_DEV/ansible-lint.yml"
export APLATFORM64_ANSIBLE_LINT

# YAMLLinx configuration
YAMLLINT_CONFIG_FILE="$APLATFORM64_DEV/yamllint.yml"
export YAMLLINT_CONFIG_FILE
