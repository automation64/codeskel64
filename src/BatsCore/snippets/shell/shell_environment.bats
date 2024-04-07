setup() {
  . "X_BATSCORE_SETUP_PATH_X"
}

@test "X_TEST_NAME_X: X_TEST_DESCRIPTION_X" {
  # Force container run
  # if [[ ! -f '/run/.containerenv' ]]; then
  #   skip 'this case can only be tested inside a container'
  # fi

  # assert_not_equal "$X_SHELL_EXPORTED_VARIABLE_X" ''
  # assert_file_executable "$X_EXTERNAL_COMMAND_X"
  # assert_equal "$X_SHELL_EXPORTED_VARIABLE_X" "X_EXPECTED_VALUE_X"
}

