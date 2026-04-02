""""""""""""""" 
" MAPPINGS:
""""""""""""""" 

" (IN SYSTEM CLIPBOARD)
" `"+y` 
" -- vim VISUAL MODE select COPY to OS clipboard
vnoremap <C-y> "+y
" `"+x` 
" -- vim VISUAL MODE select CUT to OS clipboard
vnoremap <C-x> "+x
" -- INSERT MODE PASTE clipboard:
" -- os-LINUX-fedora: ctrl+shift+v
" -- os-MAC: cmd+v
"
" -- os-LINUX:
" - how to yank vim to OS clipboard?
" - how to paste into vim from OS clipboard
"vnoremap <C-y> "*yy
"vnoremap <C-x> "*x
" ctrl+shift+v // Insert Mode paste clipboard


"" SELECT ALL:
"nnoremap <C-a> ggVG "-- turn off for now
" SELECT ALL:
" ggVG
" -- `gg` to go to top of page
" -- `V` to select line
" -- `G` to go to bottom of the page
"
" TIMETRAVEL:
" u      -- to UNDO RECENT CHANGE
" ctrl+r -- to REDO RECENT CHANGE

" to make the <Leader> key the ',' key (tilda ~ key)
let mapleader = ','


