#! /bin/sh

# This is how you manage your sessions
# you can create a new sesssion, which will copy the 
# example.sh file with a name of your choosing
# and you can edit from there

check_for_project() {
  local project_file="$TSM_ROOT/${1}.sh"

  if [ ! -f "$project_file" ]; then
    echo "Project ${1} doesn't exist"
    return 1
  else
    echo "Project ${1} exists"
    return 0
  fi
}

new_project() {
  # create a new project
  # argument is the project name
  if [ ! -f "$TSM_INSTALLATION_ROOT/starter.sh" ]; then
    cat << EOF
      starter.sh not found.
EOF
    return 1
  fi


  if [ -f "$TSM_ROOT/${1}".sh ]; then
    cat << EOF
      Project already exists.
EOF

    return 1
  fi
  cp $TSM_INSTALLATION_ROOT/starter.sh "$TSM_ROOT/${1}".sh
  "$EDITOR" "$TSM_ROOT/${1}".sh
}

load_project() {
  # load a project
  # argument is the project name
  if check_for_project "${1}"; then
    . "$TSM_ROOT/${1}".sh
  else
    return 1
  fi
}

edit_project() {
  # edit a project
  # argument is the project name
  if check_for_project "$1"; then
    "$EDITOR" "$TSM_ROOT/${1}".sh
  else
    return 1
  fi
}
