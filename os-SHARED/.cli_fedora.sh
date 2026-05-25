
#-- For laravel
export PATH="/home/reinhardt/.config/herd-lite/bin:$PATH"

#-- path update for Claude
export PATH="$HOME/.local/bin:$PATH"

#-- path for Golang
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$(go env GOPATH)/bin"
#export GOPATH="/home/reinhardt/go/bin/"

export PHP_INI_SCAN_DIR="/home/reinhardt/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

#-- For Ruby
# Added by `rbenv init` on Wed May  6 03:46:19 PM PDT 2026
eval "$(rbenv init - --no-rehash bash)"
# commenting out for now since we'll use RVM
# re-activating since RVM is having issues DL R-3


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"
