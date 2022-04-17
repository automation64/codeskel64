#
###[ embedded-bashlib64-end ]#####################
#

#
# CodeSkel64 Functions
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

function codeskel64_check() {
  :
}

function codeskel64_help() {

  bl64_msg_show_usage \
    '<-d|-l|-c> [-w] [-o COLLECTION] [-k SKELETON] [-t PROJECT] [-g TARGET] [-a LIBRARY] [-h]' \
    'Create initial structure from skeletons and templates' \
    '
    -d           : Download catalog to LIBRARY
    -l           : List collection and skeletons from LIBRARY
    -c           : Create initial code structure
    ' '
    -w           : Overwrite target
    -h           : Show help
    ' "
    -o COLLECTION: Collection name
    -k SKELETON  : Skeleton name
    -t PROJECT   : Destination full path
    -g TARGET    : New structure name. Default: skeleton's default
    -a LIBRARY   : Library location. Default: CODESKEL64_LIBRARY ($CODESKEL64_LIBRARY)
    "

}

#
# Main
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

declare codeskel64_status=1
declare codeskel64_option=''
declare codeskel64_command=''
declare codeskel64_command_tag=''
declare codeskel64_collection="$BL64_LIB_DEFAULT"
declare codeskel64_skeleton="$BL64_LIB_DEFAULT"
declare codeskel64_project="$BL64_LIB_DEFAULT"
declare codeskel64_target="$BL64_LIB_DEFAULT"
declare codeskel64_overwrite="$BL64_LIB_VAR_OFF"

(($# == 0)) && codeskel64_help && exit 1
while getopts ':dlca:o:k:t:g:wh' codeskel64_option; do
  case "$codeskel64_option" in
  d)
    codeskel64_command='codeskel64_download'
    codeskel64_command_tag='download catalog'
    ;;
  l)
    codeskel64_command='codeskel64_list'
    codeskel64_command_tag='show catalog'
    ;;
  c)
    codeskel64_command='codeskel64_create'
    codeskel64_command_tag='create structure'
    ;;
  t) codeskel64_project="$OPTARG" ;;
  a) CODESKEL64_LIBRARY="$OPTARG" ;;
  w) codeskel64_overwrite="$BL64_LIB_VAR_ON" ;;
  o) codeskel64_collection="$OPTARG" ;;
  k) codeskel64_skeleton="$OPTARG" ;;
  g) codeskel64_target="$OPTARG" ;;
  h) codeskel64_help && exit ;;
  \?) codeskel64_help && exit 1 ;;
  esac
done
[[ -z "$codeskel64_command" ]] && codeskel64_help && exit 1
codeskel64_check || exit 1
bl64_msg_setup "$BL64_MSG_FORMAT_PLAIN"

bl64_msg_show_batch_start "$codeskel64_command_tag"
case "$codeskel64_command" in
'codeskel64_download')
  "$codeskel64_command"
  ;;
'codeskel64_list')
  "$codeskel64_command" "$codeskel64_collection"
  ;;
'codeskel64_create')
  "$codeskel64_command" \
    "$codeskel64_overwrite" \
    "$codeskel64_collection" \
    "$codeskel64_skeleton" \
    "$codeskel64_project" \
    "$codeskel64_target"
  ;;
esac
codeskel64_status=$?

bl64_msg_show_batch_finish $codeskel64_status "$codeskel64_command_tag"
exit $codeskel64_status
