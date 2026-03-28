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


" to make the <Leader> key the ',' key (tilda ~ key)
let mapleader = ','

