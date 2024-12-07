main() {
  local base_dir=$(nex _plugin)--test
  mkdir -p $base_dir

  if [[ -z $1 ]]; then
    echo " Usage: nex download plugin git|tmux|mux"
    echo
    exit 1
  fi

  local plugin_name="$1.plugin"
  cd $base_dir
  echo "Downloading Plugin - $plugin_name"

  if [[ $(whoami) == "chk" ]]; then
    git clone git@github.com:chanakasan/$plugin_name.git
  else
    git clone https://github.com/chanakasan/$plugin_name.git
  fi

  echo done
  echo
}

main $@
