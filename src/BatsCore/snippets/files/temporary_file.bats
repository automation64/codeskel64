setup() {
  export TEST_SANDBOX

  . "X_BATSCORE_SETUP_PATH_X"

  BATSLIB_TEMP_PRESERVE=0
  BATSLIB_TEMP_PRESERVE_ON_FAILURE=1

  TEST_SANDBOX="$(temp_make)"
}

@test "X_TEST_NAME_X: X_TEST_DESCRIPTION_X" {
  # Force container run
  # if [[ ! -f '/run/.containerenv' ]]; then
  #   skip 'this case can only be tested inside a container'
  # fi

  # Test block

  # assert_dir_exist "X_TEST_CHECK_PATH_X"
  # assert_file_exist "X_TEST_CHECK_PATH_X"
}

teardown() {
  temp_del "$TEST_SANDBOX"
}
