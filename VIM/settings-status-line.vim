""""""""""""""" 
" STATUS LINE:
""""""""""""""" 

function! GitGetCurrentBranch()
    let branch_name = system("git rev-parse --abbrev-ref HEAD")
    let notidx = match(branch_name, 'fatal: not a git repository')
    if notidx == -1
        let branch_name = strtrans(branch_name)
        let branch_name = branch_name[:-3][0:20]
        return '{' . branch_name . '}'
    endif
    return ''
endfunction

" Clear status line when vimrc is reloaded.
let status_line = ''

" Status line left side.
"let status_line ..= ' %F %M %Y %R'
let status_line ..= '/%f %M %R'
" %F – Display the full path of the current file.
" %M – Modified flag shows if file is unsaved.
" %Y – Type of file in the buffer.
" %R – Displays the read-only flag.

let status_line ..= '%='
"let status_line ..= 'test' " middle

"let branch_name = GitGetCurrentBranch()
"if branch_name != ''
    "let status_line ..= ' ' .. GitGetCurrentBranch()
"endif

" Use a divider to separate the left side from the right side.
let status_line ..= '%='


" Status line right side.
"set statusline+=\ ascii[%b]\ hex[0x%B]\ row:col[%l:%c]\ (%p%%)
let status_line ..=' [%l:%c] %p%%'
" %b – Shows the ASCII/Unicode character under cursor.
" 0x%B – Shows the hexadecimal character under cursor.
" %l – Display the row number.
" %c – Display the column number.
" %p%% – Show the cursor percentage from the top of the file.

set statusline=%!status_line

" Always Show the status line.
set laststatus=2


