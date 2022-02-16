#!/bin/bash

function test1() {
  echo "function test1()"
}

test2() {
  echo "test2()"
}

function test3 {
  echo "function test3"
}

test4() { echo "test4()"; }

test5() ( echo "test5()" )

test6(){ echo "test6()"; }

function test7() {
  echo "function test7()"
}

test1
test2
test3
test4
test5
test6
test7
