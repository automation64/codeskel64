setup() {
  . "$DEVCS_TEST_BATSCORE_SETUP"
  [[ ! -d "$XDG_DATA_HOME" ]] && mkdir -p "$XDG_DATA_HOME"
}

@test "codeskel64: download catalog" {
  if [[ ! -f '/run/.containerenv' ]]; then
    skip 'this case can only be tested inside a container'
  fi

  run "$DEVCS_BUILD_PROD" -d
  assert_success
}
