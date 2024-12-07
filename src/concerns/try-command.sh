try_command() {
  local cmd_1=_nx_$1'_'$2
  local cmd_2=_nx_$1
  _try_cmd $cmd_1 "${@:3}"
  _try_cmd $cmd_2 "${@:2}"
}

_try_cmd() {
  if is_command $1; then
    "$1" ${@:2}
    exit
  fi
}
