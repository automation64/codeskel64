setup() {
  . "$TESTMANSH_TEST_BATSCORE_SETUP"
}

@test "codeskel64: no params" {
  run "${TESTMANSH_PROJECT_BUILD}/${DEVCS_APP_NAME}"
  true
  assert_failure
}

@test "codeskel64: help" {
  run "${TESTMANSH_PROJECT_BUILD}/${DEVCS_APP_NAME}" -h
  assert_success
}
