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

"-- SETTINGS
"
"colorcolumn=80,120 "//doesn't work
"cursorline "//doesn't work
"cursorcolumn "//doesn't work

" :set wrap! // toggle text WRAP

" shows the file line numbers
set number
" enable relative line numbers
set relativenumber

" sets the command prompt window size
set cmdheight=1

" set line length soft limit
set colorcolumn=80,120

" allows auto indentation
set autoindent
" spaces used for indenting even when pressing TAB
set expandtab 
" //toggle between spaces & tabs
" set expandtab!

" //show tabs or spaces
" set list //show tabs
" set nolist //hide tabs

" best to have these matching
" num of spaces for a line indent
set tabstop=2
"set tabstop=4
" identation when using `>>` or `<<` (4=single 'tab')
set shiftwidth=2
"set shiftwidth=4

" highlights the current line
set cursorline
" highlights the current column but slows vim for biggers files
"set cursorcolumn
" // can set this in :set cursorcolumn!

" adds syntax highlighting
syntax on

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

"" SESSIONS
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
" // to show cursor
" cmd + /

" // repeats the command you did recently
" .

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


"" WINDOWS COMMAND MODE
" <C-w> ...

"" RESIZE
" // to resize the width of a pane
" :vertical resize (+/-) n
" // to resize by 1 character wider or narrower
" <C-w> (>/<)
"
" // to resize the height of a pane
" :resize (+/-) n
" :res (+/-) n 
" // to vertical resize by 1 line 
" <C-w> (+/-)
"
" // to equalize width and height 
" <C-w> = 

"" REORGANIZE
" // to rotate the panes count-clockwise
" <C-w> r
" // to rotate the panes clockwise
" <C-w> R

"" SEARCH
" (in file)
" `/` // to search forward
" `?` // to search backward
" n // to go to next occurence
" N // to go to previous occurence

" (in project)
" :Rg
" // can then type to complete and find file needed

"" INSERT
" I // to insert at beginning of line
" i // to insert at current position
" a // to append just after current position
" A // to append at end of line

" O // to open new live above the current line
" o // to open new line below the current line

"" EDIT
" J // to simplify and merge the next line with your current line

"" DELETE
" x // to delete a character
" dw // to delete a word
" dd // to delete a line

"" ADVANCED COMMANDS
" ~ // toggle character casing
" 0 // go to start of line
" $ // go to end of line
" ctrl+a <C-a> // increment number
" ctrl+x <C-x> // decrement number
" t<char> // till character
" f<char> // on character
" vi<char> // visual mode (select) in character
" ci<char> // change in character 
"     - ex: ci" means change (replace characters in ")
" di<char> // delete in character - ex: di{ means delete all within {}
" da<char> // delete all in and including character 
"     - ex: da{ means delete {} and everything in them
" vi{~ // COMBO: select everything in { and toggle casing
" f.ct( // COMBO: on character . change everything until (

"" UPPERCASE & lowercase
"" uppsercase & lowercase
" visual mode select characters
" U for UPPERCASE
" u for lowercase

"" SELECT + INDENT/ COPY/ CUT/ PASTE
" v // to select a character
" shift+v // to select a line
" [j/k] // move [up/down] 

" > // to indent

" (in vim clipboard)
" y // to copy
" d // to cut
" P // to paste before the cursor
" p // to paste after the cursor



""""""""""""""" 
" VISUAL MODE
""""""""""""""" 
" // to jump to beginning or end of selection
" o || O
" // vertically select column of items
" C-v (ctrl-v)
" // then can go up or down with j/k
" great for incrementing a list (ex: week dates)



""""""""""""""" 
" INSERT MODE
""""""""""""""" 
" just type normally




""""""""""""""" 
" SCRIPTS
""""""""""""""" 
" how to get the path of the current file opened in buffer
":let @" = expand("%:p")
"%" // for relative file path
"%:p" // for full file path not relative


" .
