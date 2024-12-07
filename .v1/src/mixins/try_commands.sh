try_commands() {
  try_cmd $cmd_1 "${@:3}"
  try_cmd $cmd_2 "${@:2}"
}

try_cmd() {
  if is_cmd $1; then
    "$1" ${@:2}
    exit
  fi
}
