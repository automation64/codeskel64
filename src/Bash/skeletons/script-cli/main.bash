#!/usr/bin/env bash
# Template: 1.0.0
# X_SCRIPT_HEADER_PLACEHOLDER_X

#
# Imports
#
# delete-me # Use this section to declare imports

# optional # # shellcheck source=X_PATH_LIBRARY_X
# optional # source 'X_PATH_LIBRARY_X'

#
# Globals
#
# delete-me # Use this section to declare global variables only. Settings are done in the function X_APP_NAMESPACE_X_initialize

# example # readonly X_APP_NAMESPACE_X_X_EXPORT_RO_X=''
# example # export X_APP_NAMESPACE_X_X_EXPORT_X=''

#
# Functions
#

# X_FUNCTION_HEADER_PLACEHOLDER_X
function X_APP_NAMESPACE_X_X_FUNCTION_COMMAND_X() {
  local flag="$1"
  local option="$2"
  local status=1

  # X_CODE_PLACEHOLDER_X

  return $status
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

#######################################
# Show script usage description
#
# Arguments:
#   None
# Outputs:
#   Command line format and description
# Returns:
#   0
#######################################
function X_APP_NAMESPACE_X_help() {
  # X_CODE_PLACEHOLDER_X

  return 0
}

#
# Main
#

declare X_APP_NAMESPACE_X_command=''
declare X_APP_NAMESPACE_X_X_OPTION_X=''
declare X_APP_NAMESPACE_X_X_FLAG_X='0'

(($# == 0)) && X_APP_NAMESPACE_X_help && exit 1
while getopts ':xy:zh' X_APP_NAMESPACE_X_option; do
  case "$X_APP_NAMESPACE_X_option" in
  x) X_APP_NAMESPACE_X_command='X_APP_NAMESPACE_X_X_FUNCTION_COMMAND_X' ;;
  y) X_APP_NAMESPACE_X_X_OPTION_X="$OPTARG" ;;
  z) X_APP_NAMESPACE_X_X_FLAG_X='1' ;;
  h) X_APP_NAMESPACE_X_help && exit 0 ;;
  *) X_APP_NAMESPACE_X_help && exit 1 ;;
  esac
done
X_APP_NAMESPACE_X_initialize || exit 1

case "$X_APP_NAMESPACE_X_command" in
'X_APP_NAMESPACE_X_X_FUNCTION_COMMAND_X') "$X_APP_NAMESPACE_X_command" "$X_APP_NAMESPACE_X_X_FLAG_X" "$X_APP_NAMESPACE_X_X_OPTION_X" ;;
*) echo "Error: invalid parameter ($X_APP_NAMESPACE_X_command)"; exit 1 ;;
esac
