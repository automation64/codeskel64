#
# Initialize bats-core test
#
# * Source this file from the first line of the setup() function in the test-case
#

# Load bats-core plugins
. "X_BATS_HELPER_ASSERT_PATH_X/load.bash"
. "X_BATS_HELPER_FILE_PATH_X/load.bash"
. "X_BATS_HELPER_SUPPORT_PATH_X/load.bash"

# Do not overwrite signals already set by bats-core
# ERR, DEBUG, EXIT

# Sets used by bats-core. Do not overwrite
set -o 'errexit'
set +o 'nounset'
# Do not set/unset: 'keyword', 'noexec'

# (Optional) Add shared settings. Available to all test-cases using this setup routine
