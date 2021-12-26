#!/bin/bash
set -x
test=1

echo "1.1. ((test != 0))"
((test != 0)) && echo "true" || echo "false"

echo "1.2. ((test = 1))"
((test = 1)) && echo "true" || echo "false"

echo "2.1. ((test == 0))"
((test == 0)) && echo "true" || echo "false"

echo "2.2. ((test != 0))"
((test != 0)) && echo "true" || echo "false"

echo "2.3. ((test == 1))"
((test == 1)) && echo "true" || echo "false"

echo "2.1. ((\$test = 0))"
(($test = 0)) && echo "true" || echo "false"

echo "2.2. ((\$test = 1))"
(($test = 1)) && echo "true" || echo "false"

echo "3.1. ((\$test == 0))"
(($test == 0)) && echo "true" || echo "false"

echo "3.2. ((\$test != 0))"
(($test != 0)) && echo "true" || echo "false"

echo "3.3. ((\$test == 1))"
(($test == 1)) && echo "true" || echo "false"
