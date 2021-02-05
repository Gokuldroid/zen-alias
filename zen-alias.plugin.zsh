function store_previous_directory() {
  if [ -e .aliases ]; then
    export PREVIOUS_ALIAS_DIR="$PWD"
  fi
}

function zen_alias() {
  if [ -n "$PREVIOUS_ALIAS_DIR" ] && ! is_subdirectory "$PWD" "$PREVIOUS_ALIAS_DIR" ; then
    zen_aliases="$PREVIOUS_ALIAS_DIR/.aliases"

    while IFS=':' read -r key value || [ -n "$key" ]; do
      unalias "$key" > /dev/null 2>&1
    done < $zen_aliases

    unset PREVIOUS_ALIAS_DIR
    echo "zen aliases unloaded"
  fi

  if [ -e .aliases ]; then
    while IFS=':' read -r key value || [ -n "$key" ]; do
      alias "$key"="${value##*( )}"
    done < ".aliases"

    echo "zen aliases loaded"
  fi
  execute_init_zen_dir
}

function execute_init_zen_dir() {
  alias init_zen_dir >/dev/null 2>&1 && init_zen_dir
}

function is_subdirectory() {
  local child="$1"
  local parent="$2"
  if [[ "${child##${parent}}" != "$child" ]]; then
    return 0
  else
    return 1
  fi
}

function cd() {
  store_previous_directory
  builtin cd "$@"
  zen_alias
}

function update_zen_alias() {
  (cd ~/.oh-my-zsh/plugins/zen-alias && git pull)
}