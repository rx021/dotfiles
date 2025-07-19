# SHARED BASH - TMUX ALIASES

test_message="TEST TMUX aliases"
alias alias_tmux="echo '$test_message'"

alias tls="$(create_alias "tmux ls")"
alias tns='echo "// sh ~/dotfiles/SCRIPTS/tmux-new-session.sh"; function foo(){ sh ~/dotfiles/SCRIPTS/tmux-new-session.sh $1; unset -f foo; }; foo'
alias tas='echo "// tmux attach-session -t <name>"; tmux attach-session -t '
alias trs='echo "// tmux rename-session -t <old-name> <new-name>"; tmux rename-session -t '
alias tkill='echo "// tmux kill-session -t <name>"; tmux kill-session -t '


