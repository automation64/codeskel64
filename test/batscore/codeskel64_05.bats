setup() {
  . "$TESTMANSH_TEST_BATSCORE_SETUP"

  TEST_SANDBOX="$(temp_make)"
}

@test "codeskel64: create file" {
  if [[ ! -f '/run/.containerenv' ]]; then
    skip 'this case can only be tested inside a container'
  fi

  "$DEVCS_BUILD_PROD" -d

  cd "${TEST_SANDBOX}"
  run "$DEVCS_BUILD_PROD" -c -o Bash -k script-generic
  assert_success
  assert_file_exist "${TEST_SANDBOX}/template.bash"
}

teardown() {
  temp_del "$TEST_SANDBOX"
}
