#!/usr/bin/env bash
#######################################
# X_APP_INFO_X
#
# Author: X_AUTHOR_ALIAS_X (X_AUTHOR_GIT_URL_X)
# License: GPL-3.0-or-later (https://www.gnu.org/licenses/gpl-3.0.txt)
# Repository: X_PROJECT_GIT_URL_X
# Version: X_APP_VERSION_X
#######################################

#
# Imports
#

# source X_PATH_LIBRARY_X

#
# Exports
#

readonly X_APP_NAMESPACE_X_X_EXPORT_RO_X=''
export X_APP_NAMESPACE_X_X_EXPORT_X=''

#
# Functions
#

function X_APP_NAMESPACE_X_X_FUNCTION_COMMAND_X() {

  local flag="$1"
  local option="$2"
  local status=1

  return $status

}

#######################################
# Check requirements and prerequisites
#
# Arguments:
#   None
# Outputs:
#   Failed check description
# Returns:
#   0: check ok
#   1: requirements not met
#######################################
function X_APP_NAMESPACE_X_check() {

  local result=1

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

  :

}

#
# Main
#

declare X_APP_NAMESPACE_X_status=1
declare X_APP_NAMESPACE_X_command=''
declare X_APP_NAMESPACE_X_X_OPTION_X=''
declare X_APP_NAMESPACE_X_X_FLAG_X='0'

[[ $# = 0 ]] && X_APP_NAMESPACE_X_help && exit 1
while getopts ':xy:zh' X_NAMESPACE_SCRIPT_option; do
  case "$X_NAMESPACE_SCRIPT_option" in
  x) X_APP_NAMESPACE_X_command='X_APP_NAMESPACE_X_X_FUNCTION_COMMAND_X' ;;
  y) X_APP_NAMESPACE_X_X_OPTION_X="$OPTARG" ;;
  z) X_APP_NAMESPACE_X_X_FLAG_X='1' ;;
  h) X_APP_NAMESPACE_X_help && exit ;;
  \?) X_APP_NAMESPACE_X_help && exit 1 ;;
  esac
done
[[ -z "$X_APP_NAMESPACE_X_command" ]] && X_APP_NAMESPACE_X_help && exit 1
[[ -z "$X_APP_NAMESPACE_X_X_OPTION_X" ]] && X_APP_NAMESPACE_X_help && exit 1
X_APP_NAMESPACE_X_check || exit 1

"$X_APP_NAMESPACE_X_command" "$X_APP_NAMESPACE_X_X_FLAG_X" "$X_APP_NAMESPACE_X_X_OPTION_X"

X_APP_NAMESPACE_X_status=$?
exit $X_APP_NAMESPACE_X_status
