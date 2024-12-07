get_home() {
  echo "$HOME"
}

get_nex_root() {
  echo $nex_root
}

get_cli_path() {
  echo $nex_cli_base
}

get_config_path() {
  echo $nex_config_file
}

get_root_path() {
  if [ -z "$1" ]; then
    echo $(get_nex_root)
  else
    echo $(get_nex_root)/$1.nex
  fi
}

get_support_path() {
  local base=$(get_cli_path)/src/support
  if [ -z "$1" ]; then
    echo $base
  else
    echo $base/$1/index.sh
  fi
}

get_lib_path() {
  local base=$HOME/groups/lib/bash.lib/src
  if [ -z "$1" ]; then
    echo $base
  else
    echo $base/$1/index.sh
  fi
}

get_plugin_path() {
  if [ -z "$1" ]; then
    echo $(get_nex_root)/plugin
  else
    echo $(get_nex_root)/plugin/$1.plugin
  fi
}

get_mod_path() {
  if [ -z "$1" ]; then
    echo $(get_nex_root)/mod
  else
    echo $(get_nex_root)/mod/$1.mod
  fi 
}

get_pak_path() {
  if [ -z "$1" ]; then
    echo $(get_nex_root)/pak
  else
    echo $(get_nex_root)/pak/$1.pak
  fi 
}
