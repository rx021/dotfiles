# BASH_PROFILE SETUP

source ~/dotfiles/os-SHARED/.utils.sh

#-- overwrite defaults in .utils.sh
color_prompt=yes
cli_prefix="🖳 "

source ~/dotfiles/os-SHARED/.cli.sh

source ~/dotfiles/os-SHARED/.alias_filesystem.sh
source ~/dotfiles/os-SHARED/.alias_git.sh
source ~/dotfiles/os-SHARED/.alias_tmux.sh
source ~/dotfiles/os-SHARED/.x.sh

#-- OS SPECIFIC
source ~/dotfiles/os-SHARED/.cli_fedora.sh
source ~/dotfiles/os-SHARED/.alias_filesystem_fedora.sh
source ~/dotfiles/os-SHARED/.alias_git_fedora.sh
source ~/dotfiles/os-SHARED/.pomodoro_fedora.sh


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Added by `rbenv init` on Wed May  6 03:46:19 PM PDT 2026
eval "$(rbenv init - --no-rehash bash)"
# commenting out for now since we'll use RVM
# re-activating since RVM is having issues DL R-3
