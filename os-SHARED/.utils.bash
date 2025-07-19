create_alias()
{
  alias_command=$1
  alias_message="echo '// $alias_command'"
  echo "$alias_message; $alias_command"
}

