#!/bin/bash

printf "1.1. \${0}: %s\n" ${0}

printf "1.2. \${0##*/}: %s\n" ${0##*/}

source 'builtin_variable_02/lib.bash'
