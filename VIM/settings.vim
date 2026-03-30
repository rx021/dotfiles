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
""""""""""""""" 

source ~/dotfiles/VIM/settings-status-line.vim
source ~/dotfiles/VIM/settings-mappings.vim
source ~/dotfiles/VIM/settings-tabs.vim
source ~/dotfiles/VIM/plugins.vim

"-- SIMPLE SETUP for new systems
"set number relativenumber
"set autoindent expandtab
"set tabstop=2 shiftwidth=2

"set wrap! " toggle text WRAP
set number " shows line# in file
set relativenumber " shows relative line#

set autoindent " allows auto indentation
" spaces used for indenting even when pressing TAB
set expandtab " toggle between spaces & tabs
" set expandtab!

set tabstop=2 " # of spaces per line indent
set shiftwidth=2 " identation for `>>`/`<<`
"set tabstop=4
"set shiftwidth=4
" NOTE: (4 spaces = 1 'tab')
" NOTE: best to have these matching

set cmdheight=1 " command prompt window 

set colorcolumn=80,120 " line length limits
"set cursorline " highlights row
" NOTE: slows vim for biggers files
"set cursorcolumn " hightlights column
" EX: set cursorcolumn!

" set list -- show tabs
" set nolist -- hide tabs
"-- show tabs or spaces

set foldmethod=indent "fold based on indent 
set nofoldenable "defaults no folding on 1st open
"set foldcolumn=1 "creates column for fold levels
"za -- TOGGLE FOLD
    "zo -- OPEN fold
    "zc -- CLOSE fold
"zm -- add MORE fold levels
    "zM -- MAX fold levels
"zr -- REDUCE fold levels
    "zR -- RESET fold levels to 0

syntax on " adds syntax highlighting

".
