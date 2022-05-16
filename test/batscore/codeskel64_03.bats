setup() {
  . "$DEVCS_TEST_BATSCORE_SETUP"
  [[ ! -d "$XDG_DATA_HOME" ]] && mkdir -p "$XDG_DATA_HOME"
  "$DEVCS_BUILD_PROD" -d
}

@test "codeskel64: list catalog" {
  if [[ ! -f '/run/.containerenv' ]]; then
    skip 'this case can only be tested inside a container'
  fi

  run "$DEVCS_BUILD_PROD" -l
  assert_success
}
