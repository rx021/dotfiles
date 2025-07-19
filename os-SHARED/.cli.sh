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
#color_prompt=no
color_prompt=yes

#cli_prefix="@"
#cli_prefix="💧 "
cli_prefix="💻 "

host_name="\h"
user_name="\u"

present_working_dir="\w" #-- dir path
curr_dir="\W" #-- curr dir only

#cli_dir="${present_working_dir}"
cli_dir="${curr_dir}"

#cli_prompt="# "
cli_prompt="$ "

PS1="${cli_prefix}${cli_dir}${cli_prompt}"

a_esc_char="\033" #-- ascii esc char
a_blue="34m" #-- ascii blue
a_purple="35m" #-- ascii purple
a_white="37m" #-- ascii white
prompt_color="${a_purple}"

server_data="${debian_chroot:+($debian_chroot)}"

if [ "$color_prompt" = yes ]; then
  #PS1 = ${debian_chroot:+($debian_chroot)}${user_name}${cli_prefix}${host_name}:${present_working_dir}${cli_prompt}
  #ex: = root@ubuntu-s-1vcpu-1gb-sfo3-01:~#

  cli_color="\[${a_esc_char}[${prompt_color}\]"
  color_reset="\[${a_esc_char}[${a_white}\]"

  PS1="${cli_color}${cli_prefix}${cli_dir}${color_reset}${cli_prompt}"
fi

#--  alias to open NEOVIM quickly
alias n='echo "// nvim <command>"; nvim'
alias nv='echo "// nvim <command>"; nvim'


export FZF_DEFAULT_COMMAND='rg --files --hidden --heading'


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# END OF FILE

