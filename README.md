# TSM - Tmux Session Manager

tsm - tmux session manager:- tmux session, window and pane manager built purely using shell script.
TSM keeps the shell script installation and session config file separate giving you control over
where you keep the configs wether you want to track them in version control or keep it local.

## Installation

Install the shell script using the following curl command

    curl -O https://raw.githubusercontent.com/endalk200/tsm/main/install.sh | bash

The above installation script will put the tsm scripts in your `$HOME/.config/tsm/` directory.

## Usage

To create a new tmux session configuration run:

    tsm new example_project

This will create a new tsm configuration directory and file `$HOME/.config/.tsm-sessions/example_project.sh`.
After the file has been created it will open up the file in your default editor for you to customize according
to your need.

To check if a project exists or not run:

    tsm check example_project

To load a project based on the configuration you created

    tsm load example_project

To edit a project configuration you can run:

    tsm edit example_project

This will open the project configuration file from `$HOME/.config/.tsm-sessions/` in your default code editor.
