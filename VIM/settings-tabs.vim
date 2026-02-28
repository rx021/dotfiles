""""""""""""""" 
" TABS:
""""""""""""""" 

" // show tabs all the time
set showtabline=2
"set guitablabel=%N/\ %t\ %M "// doesn't work
"set tabline=%N:%t\ %M "// removes the list of tabs
function MyTabLabel(n)
  let buflist = tabpagebuflist(a:n) "// list of buff# for each window
  let winnr = tabpagewinnr(a:n) "// number of windows in tab
   "// use [tabindex]; grabs last window in tab buffer list; use last few filename letters;
  return '[' .. (a:n) .. ']' .. bufname(buflist[winnr - 1])[-14:-1]
endfunction
function MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    " select the highlighting
    if i + 1 == tabpagenr()
      let s ..= '%#TabLineSel#'
    else
      let s ..= '%#TabLine#'
    endif

    " set the tab page number (for mouse clicks)
    let s ..= '%' .. (i + 1) .. 'T'

    " the label is made by MyTabLabel()
    let s ..= '%{MyTabLabel(' .. (i + 1) .. ')} '
  endfor

  " after the last tab fill with TabLineFill and reset tab page nr
  let s ..= '%#TabLineFill#%T'

  " right-align the label to close the current tab page
  "if tabpagenr('$') > 1
    "let s ..= '%=%#TabLine#%999X[x]'
    let s ..= '%=%#TabLine#%999X' .. GitGetCurrentBranch()
  "endif

  return s
endfunction
set tabline=%!MyTabLine() "// filenames get too big


