try_scripts() {
  try_script $script_1 "${@:4}"
  try_script $script_2 "${@:3}"
  try_script $script_3 "${@:2}"
}

try_script() {
  local file=$(get_cli_path)/src/cmd/$1
  if is_file $file; then 
    bash $file ${@:2}
    exit
  fi
}
