setup() {
  . "$TESTMANSH_TEST_BATSCORE_SETUP"
}

@test "codeskel64: no params" {
  run "$DEVCS_BUILD_TARGET"
  true
  assert_failure
}

@test "codeskel64: help" {
  run "$DEVCS_BUILD_TARGET" -h
  assert_success
}
