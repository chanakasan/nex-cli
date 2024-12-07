start() {
  echo " Uninstalling - $this_plugin_name"
}

init_script_vars() {
  this_bashrc="$HOME/.bashrc"
  this_name=$plug_short_name
  this_plugin_name=$this_name.plugin
  this_plugin_path=$(nex _plugin $this_name)
  this_start_text='__nex_'$this_name'_start'
  this_end_text='__nex_'$this_name'_end'
}

validate() {
  validate_user_vars
  init_script_vars
  validate_script_vars
}

validate_user_vars() {
  require_param "plug_short_name"
}

validate_script_vars() {
  require_param "this_name"
  require_param "this_plugin_name"
  require_param "this_plugin_path"
  require_param "this_bashrc"
  require_param "this_start_text"
  require_param "this_end_text"
}

finish() {
  echo " done"
  echo
}

remove_from_bashrc() {
  sed -i '/#'$this_start_text'/,/#'$this_end_text'/{d}' $this_bashrc
}

require_param() {
  local var_name="$1"
  local var_value="${!var_name}"
  if [ -z "$var_value" ]; then
    echo " required param is not set: $var_name"
    echo " aborting"
    echo
    exit 1
  fi
}
