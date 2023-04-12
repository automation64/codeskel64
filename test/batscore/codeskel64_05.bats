setup() {
  . "$TESTMANSH_TEST_BATSCORE_SETUP"

  TEST_SANDBOX="$(temp_make)"
  bl64_cnt_is_inside_container || skip 'test-case for container mode'
}

@test "codeskel64: create file" {
  "$DEVCS_BUILD_FULL_PATH" -d

  cd "${TEST_SANDBOX}"
  run "$DEVCS_BUILD_FULL_PATH" -c -o Bash -k script-generic
  assert_success
  assert_file_exist "${TEST_SANDBOX}/template.bash"
}

teardown() {
  temp_del "$TEST_SANDBOX"
}
