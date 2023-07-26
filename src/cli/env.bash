#
###[ embedded-bashlib64-end ]#####################
#

#
# Globals
#

export XDG_DATA_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}"

# Local catalog path
export CODESKEL64_LIBRARY="${CODESKEL64_LIBRARY:-${XDG_DATA_HOME}/codeskel64}"

# Catalog files
readonly CODESKEL64_PATH_COMBOS='combos.csv'
readonly CODESKEL64_PATH_INVENTORY='inventory.csv'
readonly CODESKEL64_PATH_SKELETONS='skeletons'

# Source catalog repo
readonly CODESKEL64_REPO='https://github.com/automation64/codeskel64-catalog.git'

# Inventory DB / field numbers
readonly CODESKEL64_DB_COLLECTION='1'
readonly CODESKEL64_DB_SKELETON='2'
readonly CODESKEL64_DB_TYPE='3'
readonly CODESKEL64_DB_DEFAULT='4'

# Inventory DB / skeleton types
readonly CODESKEL64_TYPE_FILE='f'
readonly CODESKEL64_TYPE_DIR='d'
readonly CODESKEL64_TYPE_COMBO='b'

# Inventory DB / flag for using project as default directory structure base
readonly CODESKEL64_FLAG_USE_PROJECT='_project_'
