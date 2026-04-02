""""""""""""""" 
" VIM SETUP:
""""""""""""""" 
" ~/.vimrc is for regular vim
" ~/.config/nvim/init.vim
" NOTE: that this is the file to setup nvim
"
" :%!python -m json.tool
" -- to format JSON in a .json file

""""""""""""""" 
" SETTINGS:
" SOURCE SUBFILES
" paths not ideal but composable per OS
" perhaps all within NVIM/?
" then single source?
""""""""""""""" 
source ~/dotfiles/VIM/settings-status-line.vim
source ~/dotfiles/VIM/settings-mappings-ubuntu.vim
source ~/dotfiles/VIM/settings-tabs.vim
source ~/dotfiles/VIM/plugins-ubuntu.vim

" NOTE: see this file for VIM notes
source ~/dotfiles/VIM/settings-basics.vim


".
