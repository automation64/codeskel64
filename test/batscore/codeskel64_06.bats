setup() {
  . "$TESTMANSH_TEST_BATSCORE_SETUP"

  TEST_SANDBOX="$(temp_make)"
}

@test "codeskel64: create directory" {
  if [[ ! -f '/run/.containerenv' ]]; then
    skip 'this case can only be tested inside a container'
  fi

  "${TESTMANSH_PROJECT_BUILD}/${DEVCS_APP_NAME}" -d

  cd "${TEST_SANDBOX}"
  run "${TESTMANSH_PROJECT_BUILD}/${DEVCS_APP_NAME}" -c -o GIT -k generic -t "${TEST_SANDBOX}/test"
  assert_success
  assert_dir_exist "${TEST_SANDBOX}/test"
  assert_file_exist "${TEST_SANDBOX}/test/dot.local"
}

teardown() {
  temp_del "$TEST_SANDBOX"
}
