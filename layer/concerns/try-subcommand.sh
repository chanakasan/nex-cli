try_subcommand() {
  local file_1=$1-$2-$3.sh
  local file_2=$1-$2.sh
  local file_3=$1.sh
  _try_sub $file_1 "${@:4}"
  _try_sub $file_2 "${@:3}"
  _try_sub $file_3 "${@:2}"
}

_try_sub() {
  local file=$(get_cli_root)/user/subcmd/$1
  if is_file $file; then 
    bash $file ${@:2}
    exit
  fi
}
