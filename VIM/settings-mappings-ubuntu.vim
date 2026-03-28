""""""""""""""" 
" MAPPINGS:
""""""""""""""" 

" (IN SYSTEM CLIPBOARD)
"-- os-MAC:
" `"+y` // copy to system clipboard
"vnoremap <C-y> "+y
" `"+x` // cut to system clipboard
"vnoremap <C-x> "+x
" cmd+v // Insert Mode paste clipboard 

"-- os-LINUX:
" - how to yank vim to OS clipboard?
" - how to paste into vim from OS clipboard
vnoremap <C-y> "*yy
vnoremap <C-x> "*x
" ctrl+shift+v // Insert Mode paste clipboard


"" SELECT ALL
" ggVG 
" // `gg` to go to top of page
" // `V` to select line
" // `G` to go to bottom of the page
"nnoremap <C-a> ggVG
" // turn off for now

"" TIMETRAVEL
" u // to undo recent change
" ctrl+r // to redo change

" to make the <Leader> key the ',' key (tilda ~ key)
let mapleader = ','

