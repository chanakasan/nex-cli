main() {
  if [ -z "$1" ]; then
    echo " Usage: nex update plug cli|git|mux|run|tools"
    echo
    exit 1
  fi
  local plugin_name=$1.plugin
  local plugin_path=$(nex _plugin_path "$1")
  cd $plugin_path

  if [ -n "$(git status --porcelain)" ]; then
    echo " Please commit changes first"
    echo " in $plugin_path"
    echo
    exit 1
  fi

  echo " Updating Plugin - $plugin_name"
  run_git_pull
  echo " done"
  echo
}

run_git_pull() {
  local branch_name=$(git rev-parse --abbrev-ref HEAD)
  local output=$(git pull origin $branch_name 2>&1)
  if [[ $output == *"Already up to date."* ]]; then
      echo " no new updates"
  else
      echo " plugin updated"
  fi
}

main $@
