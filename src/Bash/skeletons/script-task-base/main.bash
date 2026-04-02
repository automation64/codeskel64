#!/usr/bin/env bash
# Template: 1.0.0
# X_SCRIPT_HEADER_PLACEHOLDER_X

#
# Imports
#

# optional # # shellcheck source=X_PATH_LIBRARY_X
# optional # source 'X_PATH_LIBRARY_X'

#
# Globals
#

# example # readonly X_APP_NAMESPACE_X_X_EXPORT_RO_X=''
# example # export X_APP_NAMESPACE_X_X_EXPORT_X=''

#
# Functions
#

# X_FUNCTION_HEADER_PLACEHOLDER_X
function X_APP_NAMESPACE_X_X_FUNCTION_TASK_X() {
  local X_APP_NAMESPACE_X_X_PARAM1_X="$1"
  local X_APP_NAMESPACE_X_X_PARAMN_X="$2"

  # X_CODE_PLACEHOLDER_X
}

#######################################
# Initialize environment
#
# Arguments:
#   None
# Outputs:
#   Initializacion progress messages
# Returns:
#   0: initialization ok
#   >: failed to initialize
#######################################
function X_APP_NAMESPACE_X_initialize() {
  local result=1

  # X_CODE_PLACEHOLDER_X

  return $result
}

#
# Main
#

declare X_APP_NAMESPACE_X_X_PARAM1_X="$1"
declare X_APP_NAMESPACE_X_X_PARAMN_X="$2"

X_APP_NAMESPACE_X_initialize &&
  "$X_APP_NAMESPACE_X_X_FUNCTION_TASK_X" "$X_APP_NAMESPACE_X_X_PARAM1_X" "$X_APP_NAMESPACE_X_X_PARAMN_X"
