setup() {
  . "$TESTMANSH_TEST_BATSCORE_SETUP"
}

@test "codeskel64: no params" {
  run "$DEVCS_BUILD_FULL_PATH"
  true
  assert_failure
}

@test "codeskel64: help" {
  run "$DEVCS_BUILD_FULL_PATH" -h
  assert_success
}
