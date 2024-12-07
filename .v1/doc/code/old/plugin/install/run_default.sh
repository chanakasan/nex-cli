set -e

source $nex_support/plugin/install/helpers.sh

main() {
  local plug_short_name="$1"
  steps
}

steps() {
  validate
  start
  remove_from_bashrc
  copy_to_bashrc
  finish
}

main $@
