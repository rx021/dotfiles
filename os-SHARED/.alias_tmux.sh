# SHARED BASH - TMUX ALIASES

test_message="TEST TMUX aliases"
alias alias_tmux="echo '$test_message'"

alias tls="$(create_alias "tmux ls")"
alias tas="$(create_alias "tmux attach-session -t ")" #-- <name>
alias tkill="$(create_alias "tmux kill-session -t ")" #-- <name>
alias trs='echo "// tmux rename-session -t <old-name> <new-name>"; tmux rename-session -t '

## SCRIPTS
tns_script="~/dotfiles/SCRIPTS/tmux-new-session.sh"
tns_msg="echo '// TRYING SCRIPT: $tns_script"
run_tns()
{
  echo "run_tns --"
  session_name=$1
  sh "$tns_script" "$session_name"
}
alias tns="$tns_msg; run_tns "

#-- original
#alias tns='echo "// sh ${tns_script}"; function foo(){ sh ~/dotfiles/SCRIPTS/tmux-new-session.sh $1; unset -f foo; }; foo'

#-- didn't work 
#alias tns="$(create_script_alias "~/dotfiles/SCRIPTS/tmux-new-session.sh")"


