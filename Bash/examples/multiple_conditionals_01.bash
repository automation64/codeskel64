#!/bin/bash

declare Status=0

# 1
Status=0
true || false
Status=$?
printf "1: true || false => %s\n" $Status

# 2
Status=0
false || true
Status=$?
printf "2: false || true => %s\n" $Status

# 3
Status=0
true || true
Status=$?
printf "3: true || true => %s\n" $Status

# 4
Status=0
false || false
Status=$?
printf "4: false || false => %s\n" $Status

# 5
Status=0
false || Status=1 && true
printf "5: Status=0; false || Status=1 && true => Status=%s\n" $Status

# 6
Status=0
true || Status=1 && true
printf "6: Status=0; true || Status=1 && true => Status=%s\n" $Status

# 7
false && exit 1
printf "7: false && exit 1 => OK, exit is not executed\n"

# 8
true || exit 1
printf "8: true || exit 1 => OK, exit is not executed\n"
