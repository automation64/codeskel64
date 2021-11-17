#!/bin/bash

declare Status=0

# 1
Status=0
printf "1: Status=0; true || Status=1 && exit 1 => WARNING: test fails, exit is executed\n"
true || Status=1 && exit 1
printf "1: Status=0; true || Status=1 && exit 1 => Status=%s\n" $Status
