# SHARED SHELL - CLI

alias ssha='eval $(ssh-agent); ssh-add'
#-- add specific key
# ssh-add path/to/private_key

#-- to see OS from command line
# $ uname
# $ echo $OSTYPE

#-- to see OS version from linux
# $ lsb_release -a

#-- modifying the bash prompt to something simpler
#color_prompt=yes
color_prompt=no

emoji="@"
emoji="💻 "

user_name="\u"
working_dir="\W"
cli_prompt="$"

PS1="${emoji}${working_dir}${cli_prompt}"
#PS1="\[\033[34m\]@${emoji}\W\[\033[37m\]\$ "

#PS1="\[\033[35m\]${emoji} \W\[\033[37m\]\${cli_prompt} "

#PS1="%F{5}@%. %f%F{15}$ " # // zsh

if [ "$color_prompt" = yes ]; then
  #PS1="\[\033[35m\]@\W\[\033[37m\]\$ "
  #PS1 = ${debian_chroot:+($debian_chroot)}\u@\h:\w\$
  #ex: = root@ubuntu-s-1vcpu-1gb-sfo3-01:~#
  #PS1="${debian_chroot:+($debian_chroot)}\[\033[34m\]\u@\h:\w\[\033[37m\]\$ "
  #PS1="${debian_chroot:+($debian_chroot)}\[\033[34m\]\u💧\w\[\033[37m\]\$ "
  #PS1="${debian_chroot:+($debian_chroot)}\[\033[34m\]\u💧\W\[\033[37m\]\$ "
  PS1="${debian_chroot:+($debian_chroot)}\[\033[34m\]${emoji}\W\[\033[37m\]\$ "
fi

#--  alias to open NEOVIM quickly
alias n='echo "// nvim <command>"; nvim'
alias nv='echo "// nvim <command>"; nvim'


export FZF_DEFAULT_COMMAND='rg --files --hidden --heading'


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# END OF FILE

