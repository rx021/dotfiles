# SHELL SETUP

source ~/dotfiles/os-SHARED/.utils.sh
#-- overwrite defaults in .utils.sh
color_prompt=yes
#color_prompt=no
cli_prefix="💧 "

source ~/dotfiles/os-SHARED/.cli.sh

#I want to keep colors but simplify the prompt
PS1="\[\033[34m\]@\W\[\033[37m\]\$ "

alias ssha='eval $(ssh-agent); ssh-add'
# // add specific key
# ssh-add path/to/private_key

# // to see OS from command line
# $ uname
# $ echo $OSTYPE

# // to see OS version from linux
# $ lsb_release -a

source ~/dotfiles/os-SHARED/.alias_filesystem.sh
source ~/dotfiles/os-SHARED/.alias_git.sh
source ~/dotfiles/os-SHARED/.alias_tmux.sh

#-- OS SPECIFIC

# END OF FILE
