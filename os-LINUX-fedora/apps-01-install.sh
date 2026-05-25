# ---
# REMOTE LINUX (Ubuntu) MACHINE SETUP
# ---

# CREATE SSH KEY [1a]
# passphrase = Hima

# UPDLOAD SSH KEY to GITHUB [1b]
# (google this if needed)

# CLONE DOTFILES [1c]
git clone git@github.com:reinhardtcgr/dotfiles.git
#git clone git@github.com:reinhardt021/firefly-next.git

# INSTALL NEOVIM [2]
#https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-download
#- can install from download for OS

# SET GIT EDITOR [2b]
# git config --global core.editor "nvim"
# SET GIT USER [2c]
# git config --global user.name "reinhardt"
# git config --global user.email "reinhardt.cgr@proton.me"

# INSTALL TMUX [3]
#sudo apt-get install tmux #// only Ubuntu & Debian
sudo dnf install tmux #// only for Fedora

#-- set the rebase code editor to vim
# git config --global core.editor "vim"

# INSTALL RIPGREP [4] for navigating code
sudo apt update
#sudo apt-get ripgrep
sudo apt install ripgrep fzf

# >>
# you can then ssh into the server
# and open a new tmux session 
# and get going from here
# ...
#
# INSTALL GOLANG for lazysql:

# EXTRAs:

# INSTALL BTOP:
# used for system monitoring
# instead of sytem monitor (LINUX)
# or activity monitor (MAC)
sudo dnf install btop

# for coloring CLI output
# just for easier setup
sudo dnf install bat

# Terminal graphics
sudo dnf install chafa

# INSTALL RUST:

# OPTIONAL
echo "installing rust ...";
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# // see the website: https://www.rust-lang.org/tools/install

# .
# GOTO apps-02-config.sh

# // install mosh to allow using mosh to tunnel into the server from any computer
# // for better SSH when on mobile or just for spotty connections
sudo apt-get install mosh

# RUBY version manager
# this way you can have many different versions of ruby
sudo dnf install rbenv
# it seems I already have RVM
# so I don't need this 
# to UNINSTALL
# rm -rf "$(rbenv root)"
# https://github.com/rbenv/rbenv

# INSTALL GHOSTTY:
# install dependencies
sudo dnf install \
    gtk4-devel \
    gtk4-layer-shell-devel \
    zig \
    libadwaita-devel \
    gettext
# download the latest release
# https://github.com/ghostty-org/ghostty/releases/tag/v1.3.1
# tar.gz file
# un zip this
# go into the directory
cd ghostty-1.3.1/
# run
zig build -p $HOME/.local -Doptimize=ReleaseFast
# then just needed to restart my laptop

# HUGO
# for static site generator
sudo dnf install hugo



# OPTIONAL:
#
# TODO:
# - [ ] install TAILSCALE 
#   - allows for remote access to home network
#
#
# .
