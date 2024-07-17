#! /bin/sh

TSM_INSTALLATION_ROOT="$HOME/.config/.tsm/"

if [ -z "$TSM_ROOT" ]; then
  export TSM_ROOT="$HOME/.config/.tsm-sessions/"
  echo "TSM_ROOT is not set. Setting it to: $TSM_ROOT"
else
  echo "TSM_ROOT is already set to: $TSM_ROOT skipping"
fi

show_help() {
  cat <<EOF
  ${TSM_ROOT} Directory where session configuration files are stored 

  Usage:
    -h, --help: show this help message
    check, check_for_project: [project_name] check if a project exists [project_name]
    new, new_project: [project_name] create a new project with name [project_name]
    load, load_project: [project_name] load a project with name [project_name]
EOF
}
