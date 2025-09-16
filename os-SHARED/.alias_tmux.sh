# SHARED - TMUX ALIASES

test_message="TEST TMUX aliases"
alias alias_tmux="echo '$test_message'"

alias tls="$(create_alias "tmux ls")"
alias tas="$(create_alias "tmux attach-session -t ")" #-- <name>
alias tkill="$(create_alias "tmux kill-session -t ")" #-- <name>
alias trs='echo "// tmux rename-session -t <old-name> <new-name>"; tmux rename-session -t '

## SCRIPTS

tns_script="~/dotfiles/SCRIPTS/tmux-new-session.sh"
tns_msg="echo '// TRYING SCRIPT: ${tns_script}'"
alias tns="$tns_msg; sh $tns_script "


