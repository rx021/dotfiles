# SHELL SETUP

alias ssha='eval $(ssh-agent); ssh-add'
# // add specific key
# ssh-add path/to/private_key

# // to see OS from command line
# $ uname
# $ echo $OSTYPE

# // to see OS version from linux
# $ lsb_release -a

# modifying the bash prompt to something simpler
# PS1="\u@\W\$"
color_prompt=yes
#color_prompt=no
emoji="💻"
PS1="\[\033[34m\]@${emoji}\W\[\033[37m\]\$ "

if [ "$color_prompt" = yes ]; then
  #PS1="\[\033[35m\]@\W\[\033[37m\]\$ "
  #PS1 = ${debian_chroot:+($debian_chroot)}\u@\h:\w\$
  #ex: = root@ubuntu-s-1vcpu-1gb-sfo3-01:~#
  #PS1="${debian_chroot:+($debian_chroot)}\[\033[34m\]\u@\h:\w\[\033[37m\]\$ "
  #PS1="${debian_chroot:+($debian_chroot)}\[\033[34m\]\u💧\w\[\033[37m\]\$ "
  #PS1="${debian_chroot:+($debian_chroot)}\[\033[34m\]\u💧\W\[\033[37m\]\$ "
  PS1="${debian_chroot:+($debian_chroot)}\[\033[34m\]${emoji}\W\[\033[37m\]\$ "
#else
  #PS1="@\W\$ "
  #I want to keep colors but simplify the prompt
fi


# modifying 'ls' command to default display all directory info
alias ls='ls -aFG'
alias l='ls'
# -a for showing hidden files
# -F for files vs directories
# -G for colors

#// alias to always prompt before overwriting and to be verbose"
alias mv='mv -iv '

#// Go directly to the Dotfiles folder
alias cdd='echo "// cd ~/dotfiles"; cd ~/dotfiles'


# get working directory
# // no such thing as pbcopy in linux
alias gwd='echo "// pwd |pbcopy"; pwd |pbcopy'

# alias to open neovim quickly
alias n='echo "// nvim <command>"; nvim'
alias nv='echo "// nvim <command>"; nvim'


source ~/dotfiles/os-SHARED/.utils.bash
source ~/dotfiles/os-SHARED/.alias_git.bash
source ~/dotfiles/os-SHARED/.alias_tmux.bash
source ~/dotfiles/os-SHARED/.x.bash

# GIT



# SYNC IF SYNC FILE EXISTS
alias sy='echo "// trying sync script"; [ -f ~/dotfiles/SCRIPTS/.sync.sh ] && sh ~/dotfiles/SCRIPTS/.sync.sh || echo "> no ~/dotfiles/SCRIPTS/.sync.sh file"'


export FZF_DEFAULT_COMMAND='rg --files --hidden --heading'


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# END OF FILE
