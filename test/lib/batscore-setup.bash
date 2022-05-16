#
# Initialize bats-core test
#
# * Source this file from the first line of the setup() function in the test-case
#

. "${DEVCS_BATS_HELPER_SUPPORT}/load.bash"
. "${DEVCS_BATS_HELPER_ASSERT}/load.bash"
. "${DEVCS_BATS_HELPER_FILE}/load.bash"

# Do not overwrite signals already set by bats-core (err,exit)

# Sets used by bats-core. Do not overwrite
set -o 'errexit'
set +o 'nounset'

# Do not set/unset: 'keyword', 'noexec'

#
# Application specific shared setup
#

export XDG_DATA_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}"

export BL64_LIB_DEBUG=0
