setup() {
  . "$DEVCS_TEST_BATSCORE_SETUP"
  [[ ! -d "$XDG_DATA_HOME" ]] && mkdir -p "$XDG_DATA_HOME"
  "$DEVCS_BUILD_PROD" -d
  TEST_SANDBOX="$(temp_make)"
}

@test "codeskel64: create catalog" {
  if [[ ! -f '/run/.containerenv' ]]; then
    skip 'this case can only be tested inside a container'
  fi

  run "$DEVCS_BUILD_PROD" -c -o Combo -k aplatform64-role  -t "${TEST_SANDBOX}/test-role"
  assert_success
  assert_dir_exist "${TEST_SANDBOX}/test-role"
  assert_file_exist "${TEST_SANDBOX}/test-role/README.md"
}

teardown() {
  temp_del "$TEST_SANDBOX"
}
