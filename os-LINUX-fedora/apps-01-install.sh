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

# INSTALL TMUX [3]
sudo apt-get install tmux #// only Ubuntu & Debian

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

# EXTRAs

#install rust 
echo "installing rust ...";
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# // see the website: https://www.rust-lang.org/tools/install

# .
# GOTO apps-02-config.sh

# // install mosh to allow using mosh to tunnel into the server from any computer
# // for better SSH when on mobile or just for spotty connections
sudo apt-get install mosh
