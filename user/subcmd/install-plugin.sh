set -e

main() {
  if [ -z "$1" ]; then
    echo " Usage: nex install plugin bash|git|mux|run|tools"
    echo
    exit 1
  fi
  local base_dir=$(nex _plugin)
  local plugin_name=$1.plugin
  local plugin_path=$base_dir/$plugin_name
  local file=$plugin_path/setup/install.sh
  if [ -f $file ]; then
    echo " Running setup $file"
    bash $file ${@:2}
  else
    echo " setup not found: $file"
  fi
}

main $@
