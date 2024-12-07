try_functions() {
  if [ "$(type -t $func_1)" == function ]; then
    $func_1 ${@:2}
    exit 0
  fi
}

fn_hello() {
  echo " Hello Nex CLI !"
}

fn__config() {
  get_config_path
}

fn__root() {
  get_root_path $1
}

fn__plugin() {
  get_plugin_path $1
}

fn__mod() {
  get_mod_path $1
}

fn__pak() {
  get_pak_path $1
}

fn__support() {
  get_support_path $1
}

fn__lib() {
  get_lib_path $1
}
