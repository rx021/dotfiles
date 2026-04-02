# SHARED SHELL - UTILS

create_alias()
{
  alias_command=$1
  alias_message="echo '// $alias_command'"

  #-- returns the echo & command to run in CLI
  echo "$alias_message; $alias_command"
}

create_script_alias()
{
  script_path=$1
  alias_msg="echo '// TRYING SCRIPT: ${script_path}'"
  fallback_msg="echo '> no ${script_path} file'"

  if [[ "$SHELL" == *"bash" ]]; then
    #echo "HAVE BASH"
    script_attempt="[ -f $script_path ] && bash $script_path || $fallback_msg"
  elif [[ "$SHELL" == *"zsh" ]]; then
    #echo "HAVE ZSH"
    script_attempt="[ -f $script_path ] && zsh $script_path || $fallback_msg"
  else
    #echo "no SHELL"
    script_attempt="$fallback_msg"
  fi
  
  #-- returns the echo & command to run in CLI
  echo "$alias_msg; $script_attempt"
}

## SHELL PROMPT SETTINGS - DEFAULT

#-- modifying the bash prompt to something simpler
color_prompt=no
#color_prompt=yes

#-- CLI PREFIX - DEFAULT:
#cli_prefix="💧 "
#cli_prefix="💻 "
cli_prefix="@"

