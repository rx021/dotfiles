# SHARED - FILESYSTEM ALIASES

# get working directory
alias gwd="$(create_alias 'pwd | wl-copy')"

# modifying 'ls' command to default display all directory info
alias ls='ls -aFG'
alias l='ls'
# -a for showing hidden files
# -F for files vs directories
# -G for colors

#-- alias to always prompt before overwriting and to be verbose"
alias mv='mv -iv '

#-- Go directly to the Dotfiles folder
alias cdd="$(create_alias 'cd ~/dotfiles')"

#-- Go directly to the Downloads folder
alias cdD="$(create_alias 'cd ~/Downloads')"

#-- Go directly to the OBSIDIAN folder
alias cdO="$(create_alias 'cd ~/Downloads/OBSIDIAN')"



