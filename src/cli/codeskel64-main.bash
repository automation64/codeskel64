#
# Main
#

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
  *) codeskel64_help && exit 1 ;;
  esac
done
codeskel64_check_requirements || exit 1

bl64_msg_show_batch_start "$codeskel64_command_tag"
case "$codeskel64_command" in
'codeskel64_download') "$codeskel64_command" ;;
'codeskel64_list') "$codeskel64_command" "$codeskel64_collection" ;;
'codeskel64_create')
  "$codeskel64_command" \
    "$codeskel64_overwrite" \
    "$codeskel64_collection" \
    "$codeskel64_skeleton" \
    "$codeskel64_project" \
    "$codeskel64_target"
  ;;
*) bl64_check_show_undefined "$codeskel64_command" ;;
esac
codeskel64_status=$?

bl64_msg_show_batch_finish $codeskel64_status "$codeskel64_command_tag"
exit $codeskel64_status
