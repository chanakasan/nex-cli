find_alias() {
  local key_1=$1'_'$2
  local key_2=$1
  local value=$(get_alias $key_1)
  if [ -n "$value" ]; then
    echo $value
  else
    value=$(get_alias $key_2)
    echo $value
  fi
}

get_alias() {
  local key=${1:-null}
  local value=${shortcuts_mapping[$key]}
  echo $value
}

has_alias() {
  local key=$1
  [[ -n ${shortcuts_mapping[$key]} ]] && return 0 || return 1
}
