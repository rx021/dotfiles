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
" :mksession path/to/file/<filename>.vim
" :mks! ... // short form
"-- SAVE session (all tabs/windows/buffers)
"
" :source path/to/file/<filename>.vim
"-- RESTORE session


""""""""""""""" 
" SESSION TABS:
" Layer 2
" within a Session
""""""""""""""" 
" :tabs " to list the tabs open
" :tabnew " to create a new tab

" :tabnew % " copy current BUFFER into NEW TAB
" ctrl-w T " move current BUFFER into NEW TAB

" gt (or :tabn) " GO to NEXT TAB
" gT (or :tabp) " GO to PREVIOUS TAB
" <i>gt " GO to TAB i
" EX: 3gt to show TAB 3

" :tabmove <index|relative-index>
" :tabm <index|relative-index>
" MOVE a TAB to a NEW POSITION in the tab list
" to move current tab to a certain index
" NOTE: starts 0 index by default
" EX:
" :tabmove 3
" :tabmove 2
" :tabm -1

" :tabclose " CLOSE TAB (incl all windows)
" :tabcl


""""""""""""""" 
" MODES
" PER WINDOW:
""""""""""""""" 

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


""""""""""""""" 
" NORMAL MODE WINDOWS:
""""""""""""""" 
" ctrl+w v
" :vs
"-- to SPLIT current WINDOW VERTICALLY
"
" ctrl+w s
" :sp
"-- to SPLIT current WINDOW HORIZONTALLY
"
" cmd + /
"-- to show cursor (MacOS)
"
" .  -- repeats the command you did recently


""""""""""""""" 
" NORMAL MODE WINDOWS SEARCH:
""""""""""""""" 
" IN CURRENT FILE:
" `/` -- to search forward
" `?` -- to search backward
"   n   -- to go to next occurence
"   N   -- to go to previous occurence
"
" IN PROJECT:
" :Rg
"-- can then type to complete & scroll files

""""""""""""""" 
" NORMAL MODE WINDOWS REORGANIZE:
""""""""""""""" 
" <C-w> r
"-- to rotate the panes count-clockwise
" <C-w> R
"-- to rotate the panes clockwise


""""""""""""""" 
" NORMAL MODE WINDOWS NAVIGATION:
""""""""""""""" 
" ctrl+w w 
"-- to ROTATE between WINDOWS
" ctrl+w [h/j/k/l]
"-- to go [LEFT/DOWN/UP/RIGHT] between WINDOWS
"
" C-e "-- scroll down 
" C-y "-- scroll up
"
" JUMPLIST jumplist
" C-i  -- jump back
" C-o  -- jump forward
" ''   -- toggle to last place
" zz   -- recenter window to cursor 
"
" %  --  to JUMP BETWEEN BRACKES
" $% -- to JUMP from OPEN BRACKET to CLOSE
" ^% -- to JUMP from CLOSE BRACKET to OPEN
" $  -- to JUMP to the END of the LINE
" ^  -- to JUMP to the START of the LINE
" 0  -- to JUMP to the START of the LINE


""""""""""""""" 
" NORMAL MODE NAVIGATION BUFFERS:
""""""""""""""" 


""""""""""""""" 
" NORMAL MODE NAVIGATION ADVANCED COMMANDS:
""""""""""""""" 
" t<char>  -- TILL CHARACTER
"
" f<char>  -- ON CHARACTER
" COMBO EX: f.ct( 
" ~> on character . change everything until (
"
" vi<char> -- visual mode (select) in character
" COMBO EX: vi{~
" ~> select everything in { and toggle casing
"
" ci<char> -- CHANGE in CHARACTER 
" EX: ci"
" ~> means CHANGE characters withIN "..."
"
" di<char> -- DELETE in CHARACTER 
" EX: di{
" ~> means DELETE withIN {...}
"
" da<char> -- DELETE ALL INCLUDING CHARACTER 
" EX:
" da{
" ~> means delete {...} & everything in them



""""""""""""""" 
" COMMAND MODE:
" type : from NORMAL mode
""""""""""""""" 
" :w " to save changes from a buffer

" :q  " to CLOSE a VIM window
" :qa " to CLOSE ALL of VIM

" :echo expand('%') -- for relative path
" :echo expand('%:p') -- for absolute path
" :let @" = expand("%:p") -- copy current file path / filename



""""""""""""""" 
" INSERT MODE:
" type a key listed below from NORMAL mode
" to add text like normal
""""""""""""""" 
" o -- to open new line BELOW the current line
" O -- to open new live ABOVE the current line
"
" I -- to insert at beginning of line
" i -- to insert at current position
" a -- to append just after current position
" A -- to append at end of line


""""""""""""""" 
" VISUAL MODE:
" type v/V from NORMAL mode
""""""""""""""" 
" SELECTION:
" v     -- to SELECT a CHARACTER
" V     -- to SELECT a LINE
" C-v (ctrl-v)
"-- VERTICALLY SELECT column of items
"
" [j/k] -- MOVE [up/down] 
"-- great for incrementing a list (ex: week dates)
"
" o/O   -- TOGGLE btwn start & end of selected

" INDENT:
" >     -- to indent

" CLIPBOARD VIM:
" y     -- to COPY
" x     -- to CUT
" d     -- to DELETE
" P     -- to PASTE BEFORE the cursor
" p     -- to PASTE AFTER the cursor

" UPPERCASE LOWERCASE:
" uppsercase & lowercase
" U     -- for UPPERCASE
" u     -- for lowercase
" ~     -- TOGGLE character casing
"-- after text selected with visual mode
" 
" MODIFIER:
" C-a -- ctrl+a INCREMENTS number
" C-x -- ctrl+x DECREMENTS number



".
