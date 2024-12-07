source $nx_cli_root/src/lib.sh
source $nx_cli_root/src/sub.sh
source $nx_cli_root/src/concerns/try-function.sh
source $nx_cli_root/src/concerns/try-subcommand.sh
source $nx_cli_root/.internal/helpers/get-paths.sh
source $nx_cli_root/.internal/includes/functions.sh

main() {
  local main_cmd="nex $1 $2 $3"
  if [ -z "$1" ]; then
    print_usage
    exit 1
  fi
  try_function $@
  try_subcommand $@
  echo " not_found: $main_cmd"
}

main "$@"
