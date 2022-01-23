#!/bin/bash

test_var='test content'

function test_eval {
  set -x
  local var_name="$1"
  eval "[[ -n \$${var_name} ]]"
}

test_eval 'test_var'
echo "1.1. eval varname: $? == 0"
