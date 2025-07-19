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
  script_attempt="[ -f $script_path] && sh $script_path || $fallback_msg"
  
  #-- returns the echo & command to run in CLI
  echo "$alias_message; $script_attempt"
}

## SHELL PROMPT SETTINGS - DEFAULT

#-- modifying the bash prompt to something simpler
color_prompt=no
#color_prompt=yes

#-- CLI PREFIX - DEFAULT:
#cli_prefix="💧 "
#cli_prefix="💻 "
cli_prefix="@"

