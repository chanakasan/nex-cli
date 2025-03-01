try_function() {
  local fn_1=fn_$1'_'$2'_'$3
  local fn_2=fn_$1'_'$2
  local fn_3=fn_$1
  _try_fn $fn_1 "${@:4}"
  _try_fn $fn_2 "${@:3}"
  _try_fn $fn_3 "${@:2}"
}

_try_fn() {
  if is_function $1; then
    $1 ${@:2}
    exit
  fi
}
