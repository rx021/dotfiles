# SHARED BASH - TMUX ALIASES

test_message="TEST TMUX aliases"
alias alias_tmux="echo '$test_message'"

alias tls="$(create_alias "tmux ls")"
alias tas="$(create_alias "tmux attach-session -t ")" #-- <name>
alias tkill="$(create_alias "tmux kill-session -t ")" #-- <name>
alias trs='echo "// tmux rename-session -t <old-name> <new-name>"; tmux rename-session -t '

## SCRIPTS

alias tns='echo "// sh ~/dotfiles/SCRIPTS/tmux-new-session.sh"; function foo(){ sh ~/dotfiles/SCRIPTS/tmux-new-session.sh $1; unset -f foo; }; foo'


