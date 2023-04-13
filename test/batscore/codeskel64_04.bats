setup() {
  . "$TESTMANSH_TEST_BATSCORE_SETUP"

  TEST_SANDBOX="$(temp_make)"
  bl64_cnt_is_inside_container || skip 'test-case for container mode'
}

@test "codeskel64: create combo" {

  "$DEVCS_BUILD_FULL_PATH" -d

  cd "${TEST_SANDBOX}"
  run "$DEVCS_BUILD_FULL_PATH" -c -o Combo -k git-generic
  assert_success
  assert_dir_exist "${TEST_SANDBOX}/new-git-generic-project"
  assert_file_exist "${TEST_SANDBOX}/new-git-generic-project/README.md"
}

teardown() {
  temp_del "$TEST_SANDBOX"
}
