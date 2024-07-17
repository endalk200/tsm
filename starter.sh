. ./util/functions.sh

project_root ~/src/my_project
session_name "my_project"

new_session

rename_window "editor"
run_command "nvim"

new_window "servers"
split_horizontal 50%

# at the end, select the window you want first
select_window "editor"

# then, attach to your session!
attach_to_session
