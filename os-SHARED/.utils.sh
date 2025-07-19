# SHARED SHELL - UTILS
create_alias()
{
  alias_command=$1
  alias_message="echo '// $alias_command'"
  echo "$alias_message; $alias_command"
}

## SHELL PROMPT SETTINGS - DEFAULT

#-- modifying the bash prompt to something simpler
color_prompt=no
#color_prompt=yes

#-- CLI PREFIX - DEFAULT:
#cli_prefix="💧 "
#cli_prefix="💻 "
cli_prefix="@"

