setup() {
  . "$TESTMANSH_TEST_BATSCORE_SETUP"

  TEST_SANDBOX="$(temp_make)"
}

@test "codeskel64: create directory" {
  if [[ ! -f '/run/.containerenv' ]]; then
    skip 'this case can only be tested inside a container'
  fi

  "$DEVCS_BUILD_PROD" -d

  cd "${TEST_SANDBOX}"
  run "$DEVCS_BUILD_PROD" -c -o GIT -k generic -t "${TEST_SANDBOX}/test"
  assert_success
  assert_dir_exist "${TEST_SANDBOX}/test"
  assert_file_exist "${TEST_SANDBOX}/test/dot.local"
}

teardown() {
  temp_del "$TEST_SANDBOX"
}
