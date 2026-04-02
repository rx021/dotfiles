""""""""""""""" 
" VIM SETUP:
""""""""""""""" 
" ~/.vimrc is for regular vim
" ~/.config/nvim/init.vim
" not that this is the file to setup nvim
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
source ~/dotfiles/VIM/settings-mappings.vim
source ~/dotfiles/VIM/settings-tabs.vim
source ~/dotfiles/VIM/plugins-ubuntu.vim

" NOTE: see this file for VIM notes
source ~/dotfiles/VIM/settings-basics.vim


"
"// mininmal ONE LINE SETUP for REMOTE LINUX
"set number relativenumber autoindent expandtab tabstop=2 shiftwidth=2
"
"set number relativenumber
"set autoindent expandtab
"set tabstop=2 shiftwidth=2
"
" // how to start recording a macro
" // where <letter> is anything from a-z
" q <letter>
" // to stop recording a macro
" q
" // to replay macro
" @ <letter>

" // to suspend vim 
" C-z (ctrl-z)
" // to re-active vim 
" fg

""""""""""""""" 
" COMMAND MODE
""""""""""""""" 
" :w // to save changes from a buffer

" :q // to CLOSE a VIM window
" :qa // to CLOSE ALL of VIM

" :echo expand('%') // for relative path
" :echo expand('%:p') // for absolute path
" :let @" = expand("%:p") // copy current file path / filename


""""""""""""""" 
" SCRIPTS
""""""""""""""" 
" how to get the path of the current file opened in buffer
":let @" = expand("%:p")
"%" // for relative file path
"%:p" // for full file path not relative


" .
