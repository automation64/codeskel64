#!/bin/bash

declare Status=0

# 1
Status=0
{
  false
  Status=$?
}
printf "1: Status in subshell (false == %s)\n" $Status

# 2
Status=0
false
Status=$?
printf "2: Status in main (false == %s)\n" $Status

# 3
Status=0
echo "test" > /dev/null && false | :
Status=$?
printf "3: Status in pipe (false == %s)\n" $Status

# 4
Status=0
{ echo "test" && false; Status=$?; } | :
printf "4: Status in subshell and pipe (false == %s)\n" $Status

# 5
Status=0
false Status=$? | :
printf "5: Status in pipe (false == %s)\n" $Status
