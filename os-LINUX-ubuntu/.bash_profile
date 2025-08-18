# SHELL SETUP

source ~/dotfiles/os-SHARED/.utils.sh
#-- overwrite defaults in .utils.sh
color_prompt=yes
cli_prefix="💧 "

source ~/dotfiles/os-SHARED/.cli.sh

#alias ssha='eval $(ssh-agent); ssh-add'
alias ssha='eval $(ssh-agent); ssh-add ~/.ssh/id_ed25519_drop_gh'
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
# get working directory
# // no such thing as pbcopy in linux
#alias gwd='echo "// pwd |pbcopy"; pwd |pbcopy'

