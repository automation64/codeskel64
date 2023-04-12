setup() {
  . "$TESTMANSH_TEST_BATSCORE_SETUP"
  bl64_cnt_is_inside_container || skip 'test-case for container mode'
}

@test "codeskel64: list catalog" {
  "$DEVCS_BUILD_FULL_PATH" -d

  run "$DEVCS_BUILD_FULL_PATH" -l
  assert_success
}
