#
# Functions
#

function codeskel64_download() {
  bl64_fs_create_dir "$BL64_LIB_DEFAULT" "$BL64_LIB_DEFAULT" "$BL64_LIB_DEFAULT" "$CODESKEL64_LIBRARY" &&
    bl64_rxtx_git_get_dir "$CODESKEL64_REPO" '.' "$CODESKEL64_LIBRARY" "$BL64_LIB_VAR_ON"
}

function codeskel64_list() {
  bl64_check_file "${CODESKEL64_LIBRARY}/${CODESKEL64_PATH_INVENTORY}" &&
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

  bl64_check_file "$catalog" || return $?

  IFS=':'
  while read -r -a combo; do
    if [[ "${combo[0]}" == "$source" ]]; then
      found=0
      unset IFS
      codeskel64_deploy \
        "$overwrite" \
        "${combo[1]}" \
        "${combo[2]}" \
        "$project" \
        "$BL64_LIB_DEFAULT"
      IFS=':'
    fi
  done < <(bl64_xsv_dump "$catalog")
  ((found == 1)) && bl64_msg_show_error "combo not found: [$source]"

  return $found
}

function codeskel64_create_directory() {
  local project="$1"
  local target="$2"
  local overwrite="$3"
  local source="$4"
  local destination=''

  bl64_check_directory "$source" || return 1

  if [[ "$target" == "$CODESKEL64_FLAG_USE_PROJECT" ]]; then
    destination="${project}"
  else
    destination="${project}/${target}"
  fi

  if [[ -d "$destination" ]]; then
    [[ "$overwrite" == "$BL64_LIB_VAR_OFF" ]] &&
      bl64_msg_show_error "target directory is already created ($destination). Use -w flag to allow content overwrite" &&
      return 1
  else
    bl64_fs_create_dir "$BL64_LIB_DEFAULT" "$BL64_LIB_DEFAULT" "$BL64_LIB_DEFAULT" "$project" &&
      bl64_fs_create_dir "$BL64_LIB_DEFAULT" "$BL64_LIB_DEFAULT" "$BL64_LIB_DEFAULT" "$destination"
  fi

  bl64_fs_merge_dir "$source" "$destination"

}

function codeskel64_create_file() {
  local project="$1"
  local target="$2"
  local overwrite="$3"
  local source="$4"
  local destination="${project}/${target}"

  bl64_check_file "$source" || return 1
  [[ "$overwrite" == "$BL64_LIB_VAR_OFF" && -f "$destination" ]] &&
    bl64_msg_show_error "target file is already created ($destination). Use -w flag to allow content overwrite" && return 1

  bl64_fs_create_dir "$BL64_LIB_DEFAULT" "$BL64_LIB_DEFAULT" "$BL64_LIB_DEFAULT" "$project" &&
    bl64_fs_cp_file "$source" "$destination"

}

function codeskel64_deploy() {
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
      "${CODESKEL64_DB_TYPE}${BL64_XSV_FS_COLON}${CODESKEL64_DB_DEFAULT}" \
      "$BL64_XSV_FS_COLON" \
      "$BL64_XSV_FS_SPACE"
  )
  [[ "${#spec[@]}" == 0 ]] && bl64_msg_show_error "skeleton not found: [${collection}/${skeleton}]" && return 1

  if [[ "${spec[0]}" == "$CODESKEL64_TYPE_FILE" ]]; then

    [[ "$project" == "$BL64_LIB_DEFAULT" ]] && project="$(pwd)"
    [[ "$target" == "$BL64_LIB_DEFAULT" ]] && target="${spec[1]}"
    bl64_msg_show_task "create new file (${project}/${target})"
    source="${CODESKEL64_LIBRARY}/${collection}/${CODESKEL64_PATH_SKELETONS}/${skeleton}/${spec[1]}"
    codeskel64_create_file "$project" "$target" "$overwrite" "$source"

  elif [[ "${spec[0]}" == "$CODESKEL64_TYPE_DIR" ]]; then

    [[ "$target" == "$BL64_LIB_DEFAULT" ]] && target="${spec[1]}"

    if [[ "$target" == "$CODESKEL64_FLAG_USE_PROJECT" ]]; then
      bl64_check_parameter 'project' 'the selected skeleton requires a project path. Retry using the -t paremeter.' || return $?
      bl64_msg_show_task "create new directory structure (${project})"
    else
      bl64_msg_show_task "create new directory structure (${project}/${target})"
      [[ "$project" == "$BL64_LIB_DEFAULT" ]] && project="$(pwd)"
    fi

    source="${CODESKEL64_LIBRARY}/${collection}/${CODESKEL64_PATH_SKELETONS}/${skeleton}"
    codeskel64_create_directory "$project" "$target" "$overwrite" "$source"

  elif [[ "${spec[0]}" == "$CODESKEL64_TYPE_COMBO" ]]; then

    [[ "$project" == "$BL64_LIB_DEFAULT" ]] && project="$(pwd)/new-${skeleton}-project"
    bl64_msg_show_task "create new project structure (${project})"
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
    bl64_check_file "${CODESKEL64_LIBRARY}/${CODESKEL64_PATH_INVENTORY}" || return $?

  codeskel64_deploy \
    "$overwrite" \
    "$collection" \
    "$skeleton" \
    "$project" \
    "$target"
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
    -c           : Create initial code structure
    -d           : Download catalog to LIBRARY
    -l           : List collection and skeletons from LIBRARY
    ' '
    -w           : Overwrite target
    -h           : Show help
    ' "
    -t Project   : Full path to the project where artifacts will be created. Default: <CURRENT_DIRECTORY>
    -o Collection: Collection name. Use the -l command to show available.
    -k Skeleton  : Skeleton name. Use the -l command to show available.
    -g Target    : New structure name. Default: skeleton's default
    -a Library   : Library location. Default: XDG_DATA_HOME/codeskel64
    "
}
