set -e

source $nex_support/plugin/uninstall/helpers.sh

main() {
  local plug_short_name="$1"
  steps
}

steps() {
  validate
  start
  remove_from_bashrc
  finish
}

main $@
