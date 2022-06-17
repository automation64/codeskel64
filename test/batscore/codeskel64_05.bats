setup() {
  . "$TESTMANSH_TEST_BATSCORE_SETUP"

  TEST_SANDBOX="$(temp_make)"
}

@test "codeskel64: create file" {
  if [[ ! -f '/run/.containerenv' ]]; then
    skip 'this case can only be tested inside a container'
  fi

  "${TESTMANSH_PROJECT_BUILD}/${DEVCS_APP_NAME}" -d

  cd "${TEST_SANDBOX}"
  run "${TESTMANSH_PROJECT_BUILD}/${DEVCS_APP_NAME}" -c -o Bash -k script-generic
  assert_success
  assert_file_exist "${TEST_SANDBOX}/template.bash"
}

teardown() {
  temp_del "$TEST_SANDBOX"
}
