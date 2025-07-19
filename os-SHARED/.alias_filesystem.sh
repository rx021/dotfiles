# SHARED BASH - FILESYSTEM ALIASES

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


# get working directory
#-- no such thing as pbcopy in linux
alias gwd="$(create_alias 'pwd | pbcopy')"


