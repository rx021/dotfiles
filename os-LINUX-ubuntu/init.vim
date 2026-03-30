""""""""""""""" 
" VIM SETUP:
""""""""""""""" 
" ~/.vimrc is for regular vim
" ~/.config/nvim/init.vim
" NOTE: that this is the file to setup nvim
"
" to format JSON in a .json file
" :%!python -m json.tool
"
""""""""""""""" 
" NORMAL MODE:
""""""""""""""" 
" MACROS:
" q <letter/number> " SART recording
" q                 " STOP recording
" @ <letter/number> " REPLAY macro
"
" SUSPEND VIM:
" C-z (ctrl-z) " SUSPEND vim 
" fg           " REACTIVATE vim 
"
" EDIT:
" J -- CONCATS NEXT LINE onto CURRENT LINE
"
" DELETE:
" x  -- DELETES a CHARACTER
" dw -- DELETES a WORD
" dd -- DELETES a LINE
"
" TIMETRAVEL:
" u      -- to UNDO RECENT CHANGE
" ctrl+r -- to REDO RECENT CHANGE

""""""""""""""" 
" COMMAND MODE:
" type : from NORMAL mode
""""""""""""""" 
" :w " to save changes from a buffer

" :q  " to CLOSE a VIM window
" :qa " to CLOSE ALL of VIM

" HOW TO GET THE PATH OF THE CURRENT FILE OPENED IN BUFFER:
" :echo expand('%') -- for relative path
" :echo expand('%:p') -- for absolute path
"
" :let @" = expand("%:p") -- copy current file path / filename
"-- `%` ~ for relative file path
"-- `%:p` ~ for full file path not relative

""""""""""""""" 
" SETTINGS:
""""""""""""""" 

source ~/dotfiles/VIM/settings-status-line.vim
source ~/dotfiles/VIM/settings-mappings-ubuntu.vim
source ~/dotfiles/VIM/settings-tabs.vim
source ~/dotfiles/VIM/plugins-ubuntu.vim

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


""""""""""""""" 
" SESSIONS:
" Layer 1
" whenever you open vim
""""""""""""""" 
"
" // to save session (all buffers /panes as before)
" :mksession path/to/file/<filename>.vim
" :mks! ... // short form
"
" // to restore session
" :source path/to/file/<filename>.vim

"" TABS
"
" // to list the tabs open
" :tabs
"
" // to create a new tab
" :tabnew
" // to open current window (pane) into new tab but keep old window as is
" :tabnew %
" // to open current window (pane) into new tab
" ctrl-w T
"
" // to go to next tab
" gt (or :tabn)
"
" // to go to previous tab
" gT (or :tabp)
"
" // to go to tab i
" <i>gt 
" //ex: 3gt to go to tab 3
"
" // MOVE a TAB to a new position in the tab list
" // note: uses 0 index
" :tabmove 3
" // to move current tab to a certain index
" :tabmove <index|relative-index>
" :tabm <index|relative-index>
" ex:
" :tabmove 2
" :tabm -1


" :tabclose // to close all panes on tab


""""""""""""""" 
" NORMAL MODE
""""""""""""""" 
" // to jump between brackes
" %


"" NAVIGATION
"   WINDOWS
" // to open new VIM window next to the existing one
" ctrl+w v
" // to open new VIM window below the existing one
" ctrl+w s

""   PANES
" // to go between panes/windows in vim 
" ctrl+w w 
" // to go [left/down/up/right] between panes
" ctrl+w [h/j/k/l]

"" BUFFERS
" :ls // to see active buffers (or :buffers / :files)
" :bufferN // to open buffer# N
" ctrl+shift+^ // to toggle between last buffer
" :bdelete | :bd // to delete a buffer
" :%bdelete|edit#|bd# // to delete all open buffers and reopens current buffer/file
"   :%bd|e#|bd#
" :w // to save changes to file

" GET COUNT OF BUFFERS
":echo len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
"--- 
":echo 'buffers['.len(filter(range(1, bufnr('$')), 'buflisted(v:val)')).']'

" GET COUNT OF INACTIVE BUFFERS
":echo len(filter(range(1, bufnr('$')), 'buflisted(v:val) && !bufloaded(v:val)'))
"--- 
":echo 'inactive['.len(filter(range(1, bufnr('$')), 'buflisted(v:val) && !bufloaded(v:val)')).']'

" GET COUNT OF ACTIVE BUFFERS
":echo 'active['.len(filter(range(1, bufnr('$')), 'buflisted(v:val) && bufloaded(v:val)')).']'

" GET BUFFER COUNTS
":echo 'buffers['.len(filter(range(1, bufnr('$')), 'buflisted(v:val)')).'] active['.len(filter(range(1, bufnr('$')), 'buflisted(v:val) && bufloaded(v:val)')).'] inactive['.len(filter(range(1, bufnr('$')), 'buflisted(v:val) && !bufloaded(v:val)')).']'

" HOW TO DELETE INACTIVE BUFFERS
":for buf in filter(range(1, bufnr('$')), 'buflisted(v:val) && !bufloaded(v:val)') | execute 'bdelete' buf | endfor

" EXAMPLE:
"1088 // buffers
"870 // inactive
"=218 // remaining









