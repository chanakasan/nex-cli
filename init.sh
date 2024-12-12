# export nx_cli_root="$(dirname "${BASH_SOURCE[0]}")"

export nx_root=$HOME/dotfiles
export nx_cli_root=$nx_root/nex-cli
export PATH=$nx_cli_root/bin:$PATH

nx_source_folder() {
  local base="$1"
  for f in $base/*.sh; do
    if [ -f "$f" ]; then
      source $f
    fi
  done
}

nx_source_folder $nx_cli_root/layer/init

echo Nex CLI Loaded
