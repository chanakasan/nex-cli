nx_source_folder() {
  local base="$1"
  for f in $base/*.sh; do
    if [ -f "$f" ]; then
      source $f
    fi
  done
}

nx_script_dir() {
  echo "$(dirname "${BASH_SOURCE[0]}")"
}

nx_append_folder_to_path() {
    local dir="$1"
    if [ -d "$dir" ]; then
        if [[ ":$PATH:" != *":$dir:"* ]]; then
            export PATH="$dir:$PATH"
        fi
    fi
}
