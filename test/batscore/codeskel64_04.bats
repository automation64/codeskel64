setup() {
  . "$TESTMANSH_TEST_BATSCORE_SETUP"

  TEST_SANDBOX="$(temp_make)"
}

@test "codeskel64: create combo" {
  if [[ ! -f '/run/.containerenv' ]]; then
    skip 'this case can only be tested inside a container'
  fi

  "$DEVCS_BUILD_TARGET" -d

  cd "${TEST_SANDBOX}"
  run "$DEVCS_BUILD_TARGET" -c -o Combo -k git-generic
  assert_success
  assert_dir_exist "${TEST_SANDBOX}/new-git-generic-project"
  assert_file_exist "${TEST_SANDBOX}/new-git-generic-project/README.md"
}

teardown() {
  temp_del "$TEST_SANDBOX"
}
