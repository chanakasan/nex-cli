set -e

source $nx_cli_root/layers/concerns/try-function.sh
source $nx_cli_root/layers/concerns/try-subcommand.sh
source $nx_cli_root/main/get-paths.sh
source $nx_cli_root/main/functions.sh
source $nx_cli_root/main/lib.sh
source $nx_cli_root/main/sub.sh

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
