#
# Functions
#

function codeskel64_download() {

  bl64_rxtx_git_get_dir \
    "$CODESKEL64_REPO" \
    '.' \
    "$CODESKEL64_LIBRARY" \
    "$BL64_LIB_VAR_ON"

}

function codeskel64_list() {

  bl64_check_file "${CODESKEL64_LIBRARY}/${CODESKEL64_PATH_INVENTORY}" || return 1
  bl64_xsv_dump "${CODESKEL64_LIBRARY}/${CODESKEL64_PATH_INVENTORY}"
}

function codeskel64_create_combo() {

  local project="$1"
  local target="$2"
  local overwrite="$3"
  local source="$4"
  local catalog="${CODESKEL64_LIBRARY}/${CODESKEL64_PATH_COMBOS}"
  local -i found=1
  declare -a combo

  bl64_check_file "$catalog" || return 1

  IFS=':'
  while read -r -a combo; do
    if [[ "${combo[0]}" == "$source" ]]; then
      found=0
      unset IFS
      codeskel64_dispatch \
        "$overwrite" \
        "${combo[1]}" \
        "${combo[2]}" \
        "$project" \
        "$BL64_LIB_DEFAULT"
      IFS=':'
    fi
  done < <(bl64_xsv_dump "$catalog")
  ((found == 1)) && bl64_msg_show_error "undefined combo: [$source]"

  return $found
}

function codeskel64_create_file() {
  local project="$1"
  local target="$2"
  local overwrite="$3"
  local source="$4"
  local destination="${project}/${target}"

  bl64_check_file "$source" || return 1
  [[ "$overwrite" == "$BL64_LIB_VAR_OFF" && -f "$destination" ]] &&
    bl64_msg_show_error "target file is already created ($destination)" && return 1

  bl64_fs_cp_file "$source" "$destination"

}

function codeskel64_create_dir() {
  local project="$1"
  local target="$2"
  local overwrite="$3"
  local source="$4"
  local skeleton=''

  bl64_check_directory "$source" || return 1

  bl64_fs_merge_dir "$source" "$project"

}

function codeskel64_dispatch() {
  local overwrite="$1"
  local collection="$2"
  local skeleton="$3"
  local project="$4"
  local target="$5"
  local source=''
  local -a spec

  read -r -a spec < <(
    bl64_xsv_search_records \
      "${collection}${BL64_XSV_FS}${skeleton}" \
      "${CODESKEL64_LIBRARY}/${CODESKEL64_PATH_INVENTORY}" \
      "${CODESKEL64_DB_COLLECTION}${BL64_XSV_FS_COLON}${CODESKEL64_DB_SKELETON}" \
      "${CODESKEL64_DB_TYPE}${BL64_XSV_FS_COLON}${CODESKEL64_DB_SOURCE}" \
      "$BL64_XSV_FS_COLON" \
      "$BL64_XSV_FS_SPACE"
  )
  [[ "${#spec[@]}" == 0 ]] && bl64_msg_show_error "skeleton not found: [${collection}/${skeleton}]" && return 1

  if [[ "${spec[0]}" == "$CODESKEL64_TYPE_FILE" ]]; then
    [[ "$target" == "$BL64_LIB_DEFAULT" ]] && target="${spec[1]}"
    source="${CODESKEL64_LIBRARY}/${collection}/${CODESKEL64_PATH_SKELETONS}/${skeleton}/${spec[1]}"
    bl64_msg_show_task "create new file using the [${collection}/${skeleton}] skeleton"
    codeskel64_create_file "$project" "$target" "$overwrite" "$source"
  elif [[ "${spec[0]}" == "$CODESKEL64_TYPE_DIR" ]]; then
    [[ "$target" == "$BL64_LIB_DEFAULT" ]] && target="${spec[1]}"
    source="${CODESKEL64_LIBRARY}/${collection}/${CODESKEL64_PATH_SKELETONS}/${skeleton}"
    bl64_msg_show_task "create new structure using the [${collection}/${skeleton}] skeleton"
    codeskel64_create_dir "$project" "$target" "$overwrite" "$source"
  elif [[ "${spec[0]}" == "$CODESKEL64_TYPE_COMBO" ]]; then
    bl64_msg_show_task "create new project structure using the [${skeleton}] combo"
    source="${skeleton}"
    codeskel64_create_combo "$project" "$target" "$overwrite" "$source"
  else
    bl64_msg_show_error "skeleton not found: [${collection}/${skeleton}]"
    return 1
  fi

}

function codeskel64_create() {
  local overwrite="$1"
  local collection="$2"
  local skeleton="$3"
  local project="$4"
  local target="$5"

  bl64_check_parameter 'collection' &&
    bl64_check_parameter 'skeleton' &&
    bl64_check_parameter 'project' &&
    bl64_check_file "${CODESKEL64_LIBRARY}/${CODESKEL64_PATH_INVENTORY}" || return 1

  if [[ -d "$project" ]]; then
    [[ "$overwrite" == "$BL64_LIB_VAR_OFF" ]] &&
      bl64_msg_show_error "project is already created ($project)" &&
      return 1
  else
    "$BL64_OS_CMD_MKDIR" "$project"
    bl64_check_directory "$project" || return 1
  fi

  codeskel64_dispatch \
    "$codeskel64_overwrite" \
    "$codeskel64_collection" \
    "$codeskel64_skeleton" \
    "$codeskel64_project" \
    "$codeskel64_target"

}

function codeskel64_check_requirements() {
  [[ -z "$codeskel64_command" ]] && codeskel64_help && return 1
  return 0
}

function codeskel64_help() {

  bl64_msg_show_usage \
    '<-d|-l|-c> [-w] [-o Collection] [-k Skeleton] [-t Project] [-g Target] [-a Library] [-h]' \
    'Create initial structure from skeletons and templates' \
    '
    -d           : Download catalog to LIBRARY
    -l           : List collection and skeletons from LIBRARY
    -c           : Create initial code structure
    ' '
    -w           : Overwrite target
    -h           : Show help
    ' "
    -o Collection: Collection name
    -k Skeleton  : Skeleton name
    -t Project   : Destination full path
    -g Target    : New structure name. Default: skeleton's default
    -a Library   : Library location. Default: XDG_DATA_HOME/codeskel64
    "

}
