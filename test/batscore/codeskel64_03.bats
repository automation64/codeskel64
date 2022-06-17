setup() {
  . "$TESTMANSH_TEST_BATSCORE_SETUP"
}

@test "codeskel64: list catalog" {
  if [[ ! -f '/run/.containerenv' ]]; then
    skip 'this case can only be tested inside a container'
  fi

  "${TESTMANSH_PROJECT_BUILD}/${DEVCS_APP_NAME}" -d

  run "${TESTMANSH_PROJECT_BUILD}/${DEVCS_APP_NAME}" -l
  assert_success
}
