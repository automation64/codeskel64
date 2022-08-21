setup() {
  . "$TESTMANSH_TEST_BATSCORE_SETUP"

}

@test "codeskel64: download catalog" {
  if [[ ! -f '/run/.containerenv' ]]; then
    skip 'this case can only be tested inside a container'
  fi

  run "$DEVCS_BUILD_TARGET" -d
  assert_success
}
