#!/bin/bash

printf "1.1. BASH_SOURCE: %s\n" ${BASH_SOURCE}
printf "1.2. BASH_SOURCE[0]: %s\n" ${BASH_SOURCE[0]}

source 'builtin_variable_01/lib.bash'
