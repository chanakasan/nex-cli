set -e

main() {
  if [ -z "$1" ]; then
    echo " Usage: nex install plugin bash|git|mux|run|tools"
    echo
    exit 1
  fi
  local plugin_name=$1.plugin
  local plugin_path=$(nex _plugin "$1")
  local file=$plugin_path/setup/install.sh
  if [ -f $file ]; then
    echo " Running setup $file"
    bash $file ${@:2}
  else
    echo " setup not found: $file"
  fi
}

main $@
