
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
