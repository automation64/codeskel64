#
###[ embedded-bashlib64-end ]#####################
#

#
# Globals
#

export XDG_DATA_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}"

export CODESKEL64_LIBRARY="${CODESKEL64_LIBRARY:-${XDG_DATA_HOME}/codeskel64}"

readonly CODESKEL64_PATH_COMBOS='combos.csv'
readonly CODESKEL64_PATH_INVENTORY='inventory.csv'
readonly CODESKEL64_PATH_SKELETONS='skeletons'
readonly CODESKEL64_REPO='https://github.com/serdigital64/codeskel64-catalog.git'
readonly CODESKEL64_DB_COLLECTION='1'
readonly CODESKEL64_DB_SKELETON='2'
readonly CODESKEL64_DB_TYPE='3'
readonly CODESKEL64_DB_SOURCE='4'
readonly CODESKEL64_TYPE_FILE='f'
readonly CODESKEL64_TYPE_DIR='d'
readonly CODESKEL64_TYPE_COMBO='b'
