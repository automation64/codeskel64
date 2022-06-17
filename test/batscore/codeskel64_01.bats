setup() {
  . "$TESTMANSH_TEST_BATSCORE_SETUP"
}

@test "codeskel64: no params" {
  run "$DEVCS_BUILD_PROD"
  true
  assert_failure
}

@test "codeskel64: help" {
  run "$DEVCS_BUILD_PROD" -h
  assert_success
}
