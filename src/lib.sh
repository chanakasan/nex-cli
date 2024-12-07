is_file() {
  if [[ -f "$1" ]]; then
    return 0
  else
    return 1
  fi
}

is_cmd() {
  if command -v $1 &> /dev/null; then
    return 0
  else
    return 1
  fi
}

is_function() {
  if [ "$(type -t $1)" == function ]; then
    return 0
  else
    return 1
  fi
}
