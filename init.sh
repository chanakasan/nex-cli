# export nx_cli_root="$(dirname "${BASH_SOURCE[0]}")"

export nx_root=$HOME/dotfiles
export nx_cli_root=$HOME/dotfiles/nex-cli
export PATH=$nx_cli_root/bin:$PATH

source $nx_cli_root/.internal/utils.sh

# feature initializers
source $nx_cli_root/.internal/init/mods.sh
source $nx_cli_root/.internal/init/paks.sh
source $nx_cli_root/.internal/init/plugins.sh

echo Nex CLI Loaded
