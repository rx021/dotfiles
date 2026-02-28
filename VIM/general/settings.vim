""""""""""""""" 
" VIM SETUP
""""""""""""""" 
" ~/.vimrc is for regular vim
" ~/.config/nvim/init.vim
" NOTE: that this is the file to setup nvim
"
" :%!python -m json.tool
" -- to format JSON in a .json file

""""""""""""""" 
" SETTINGS
""""""""""""""" 

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
set cursorline " highlights row
" NOTE: slows vim for biggers files
"set cursorcolumn " hightlights column
" EX: set cursorcolumn!

"-- show tabs or spaces
" set list -- show tabs
" set nolist -- hide tabs

set foldmethod=indent "fold based on indent 
set nofoldenable "defaults no folding on first open
"set foldcolumn=1 "creates column for fold levels
    "za //to toggle fold
        "zo //to OPEN fold
        "zc //to CLOSE fold
    "zm //to have MORE fold levels
        "zM //to have the MOST fold levels
    "zr //to have REDUCED fold levels
        "zR //to have the MOST REDUCED fold levels

syntax on " adds syntax highlighting

""""""""""""""" 
" SESSIONS
" whenever you open vim
""""""""""""""" 
"-- SAVE session (all tabs/panes/buffers)
" :mksession path/to/file/<filename>.vim
" :mks! ... // short form
"
"-- RESTORE session
" :source path/to/file/<filename>.vim


""""""""""""""" 
" NORMAL MODE
""""""""""""""" 
" MACROS
" q <letter/number> " SART recording
" q                 " STOP recording
" @ <letter/number> " REPLAY macro

" C-z (ctrl-z) " SUSPEND vim 
" fg           " REACTIVATE vim 


""""""""""""""" 
" COMMAND MODE
" type : from NORMAL mode
""""""""""""""" 
" :w // to save changes from a buffer

" :q // to CLOSE a VIM window
" :qa // to CLOSE ALL of VIM

" :echo expand('%') -- for relative path
" :echo expand('%:p') -- for absolute path
" :let @" = expand("%:p") -- copy current file path / filename

