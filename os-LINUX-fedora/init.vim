" SOURCE SUBFILES
source ~/dotfiles/VIM/general/settings.vim
" paths not ideal but composable per OS
" perhaps all within NVIM/?
" then single source?



""""""""""""""" 
" SCRIPTS
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



" how to get the path of the current file opened in buffer
":let @" = expand("%:p")
"%" // for relative file path
"%:p" // for full file path not relative


""""""""""""""" 
" MAPPINGS
""""""""""""""" 

" (IN SYSTEM CLIPBOARD)
"-- os-LINUX-fedora:
" `"+y` // vim visual mode select COPY to OS clipboard
vnoremap <C-y> "+y
" `"+x` // vim visual mode select CUT to OS clipboard
vnoremap <C-x> "+x
" ctrl+shift+v // Insert Mode paste clipboard 


"" SELECT ALL:
"nnoremap <C-a> ggVG "-- turn off for now

" to make the <Leader> key the ',' key (tilda ~ key)
let mapleader = ','



""""""""""""""" 
" PLUG-INs (using vim-plug)
""""""""""""""" 

if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd!
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
    Plug 'doums/darcula' " my prefered syntax color scheme 
    Plug 'airblade/vim-gitgutter' " to see git if line changed

    Plug 'preservim/nerdcommenter' " allows commenting out 
    " ,cc //to comment all within thin same column
    " ,ci //to comment invert (toggle)

    "Plug 'ctrlpvim/ctrlp.vim' " using fzf instead now
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " // enables :Files
    Plug 'jparise/vim-graphql' " graphQL syntax highlighting
    Plug 'StanAngeloff/php.vim' " php syntax highlighting // archived DEC 2020
    Plug 'adoy/vim-php-refactoring-toolbox'
    "<Leader>rlv //rename local variable
    "<L>rcv //rename class variable
    "<L>rm //rename method
    "<L>eu //extract use statement
    "<L>du //detect unused use statment
    "<L>ec //extract const
    "<L>ep //extract class property
    "<L>em //extract method
    "<L>cp //create property
    "<L>== //align assignments (equals)
    "<L>sg //create getters & setters
    "<L>cog //create getters
    "<L>da //document all using your document plugin

    Plug 'tpope/vim-fugitive'
    " :Git blame // to view the commit history
    "   <enter> // to view the selected commit 
    " :Gclog // to view a list of commits and what you did in them

    " // to manage git branches
    Plug 'sodapopcan/vim-twiggy'
    " :Twiggy
    " ERROR: Unknown function FugitiveShellCommand()

    " // a git commit browser
    Plug 'junegunn/gv.vim' 
    " :GV
    " ERROR: Vim(let):E117: Unknown function: FugitiveShellCommand

    " // don't want to include tags just yet
    "Plug 'majutsushi/tagbar'
    " // requires ctags to be included
    " :TagbarToggle

"// turning off for now bc of node server running out of memory
    "Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " :CocInstall coc-tsserver coc-json coc-html coc-css
    " :CocInstall coc-phpls

    " // just turning off for now
    "Plug 'arnaud-lb/vim-php-namespace', {'for': 'php'}

    " // autocompletion plug in
    "Plug 'ncm2/ncm2'
    "Plug 'roxma/nvim-yarp'
    " // NOTE: you need to install completion sources to get completions. Check
    " // our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
    "Plug 'ncm2/ncm2-bufword'
    "Plug 'ncm2/ncm2-path'
    "Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
    "Plug 'phpactor/ncm2-phpactor'

    " // makes the start page little more informative with recent files used
    Plug 'mhinz/vim-startify'

    " // Vim script for text filtering and alignment
    Plug 'godlygeek/tabular'
    " // EX: for aligning by commas (uses regex)
    ":Tabularize /, 
    "Some short phrase         , some other phrase
    "A much longer phrase here , and another long phrase

    " // Syntax highlighting, matching rules and mappings for the original Markdown and extensions.
    "Plug 'plasticboy/vim-markdown' " turning off for now bc it looks worse than default

    " // dim paragraphs above and below the active paragraph
    Plug 'junegunn/limelight.vim'
    " :Limelight!
    " // Distraction free writing by removing UI elements and centering everything
    Plug 'junegunn/goyo.vim'
    " :Goyo // to toggle
    " // CALENDAR app for vim - calendar
    Plug 'itchyny/calendar.vim'
    " :Calendar
    " // Press E key to view the event list,
    " // and T key to view the task list.
    " // Also, press ? key to view a quick help
    " :Calendar 2000 1 1
    " :Calendar -view=year
    " :Calendar -view=year -split=vertical -width=27
    " :Calendar -view=year -split=horizontal -position=below -height=12
    " :Calendar -view=clock

    " // provides syntax highlighting and improved indentation
    Plug 'pangloss/vim-javascript'

    " // svelte syntax highlighting
    Plug 'evanleck/vim-svelte', {'branch': 'main'}

    " // vue syntax highlighting
    Plug 'posva/vim-vue'

    " // to allow CSV parsing
    "Plug 'chrisbra/csv.vim'
    " // looks weird so commenting out for now

    " // to allow rust-lang parsing and syntax highlighting
    Plug 'rust-lang/rust.vim'

    " // to allow ruby lang parsing and syntax highlighting
    Plug 'vim-ruby/vim-ruby'
    " // to allow ruby lang parsing and syntax highlighting
    Plug 'tpope/vim-rails'

    " // to change surrounding (matching) tags or quotations
    Plug 'tpope/vim-surround'
    " cs"] // to change from " to ]
    " cs'<q> // to change from ' to <q> and </q>
    " cst{ // to change from <any-tag> to } with a space

    " // React syntax highlighting
    "Plug 'mxw/vim-jsx'

    " // Typescript syntax highlighting
    Plug 'leafgarland/typescript-vim'
    " // React JSX syntax highlighting for vim and Typescript
    Plug 'peitalin/vim-jsx-typescript'

    " // BLADE template highlighting
    Plug 'jwalton512/vim-blade'

    " //to install any plugins
    " :source % //to register a newly added plugin
    " :PlugInstall 
    " //to un-install any plugins
    " :source % 
    " :PlugClean 
call plug#end()

" for full rust-lang parsing functionality
syntax enable
filetype plugin indent on

function! s:tweak_darcula_colors()
  " darcula customizations
  " adds Truecolor to the terminal if supported
  set termguicolors
  let g:lightline = { 'colorscheme': 'darculaOriginal' }
endfunction
autocmd! ColorScheme darcula call s:tweak_darcula_colors()
" prefered syntax color scheme
" TODO CHECK IF PLUGIN INSTALLED
colorscheme darcula


""""""""""""""" 
" PLUG-IN MAPPINGS
""""""""""""""" 

" ctrl-p for fzf between files
map <C-p> :Files<CR>

map <C-i> :GitGutterSignsToggle<CR> 
map <C-l> :GitGutterLineHighlightsToggle<CR>

"// turning off for now bc of node server
" // code completion (coc.vim) 
" issues
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              "\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" // GoTo code navigation.
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
" // darcula links to coc.vim
"hi! link CocErrorSign ErrorSign
"hi! link CocWarningSign WarningSign
"hi! link CocInfoSign InfoSign
"hi! link CocHintSign InfoSign
"hi! link CocErrorFloat Pmenu
"hi! link CocWarningFloat Pmenu
"hi! link CocInfoFloat Pmenu
"hi! link CocHintFloat Pmenu
"hi! link CocHighlightText IdentifierUnderCaret
"hi! link CocHighlightRead IdentifierUnderCaret
"hi! link CocHighlightWrite IdentifierUnderCaretWrite
"hi! link CocErrorHighlight CodeError
"hi! link CocWarningHighlight CodeWarning
"hi! link CocInfoHighlight CodeInfo
"hi! link CocHintHighlight CodeHint

" // following breaks other shortcuts
" // Use K to show documentation in preview window.
"nnoremap <silent> K :call <SID>show_documentation()<CR>
"function! s:show_documentation()
  "if (index(['vim','help'], &filetype) >= 0)
    "execute 'h '.expand('<cword>')
  "elseif (coc#rpc#ready())
    "call CocActionAsync('doHover')
  "else
    "execute '!' . &keywordprg . " " . expand('<cword>')
  "endif
"endfunction

" // DONT WORK 
" // mappings for vim-php-namespace
"nnoremap <Leader>u :PHPImportClass<cr>
"nnoremap <Leader>e :PHPExpandFQCNAbsolute<cr>
"nnoremap <Leader>E :PHPExpandFQCN<cr>
" // Automatically adds the corresponding use statement for the name under the cursor
"function! IPhpInsertUse()
    "call PhpInsertUse()
    "call feedkeys('a',  'n')
"endfunction
"autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
"autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
" // Expands the name under the cursor to its fully qualified name
"function! IPhpExpandClass()
    "call PhpExpandClass()
    "call feedkeys('a', 'n')
"endfunction
"autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
"autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>

" // NeoVimCode completion setup
"let g:python3_host_prog='/Library/Frameworks/Python.framework/Versions/3.8/bin/python3'
" enable ncm2 for all buffers
"autocmd BufEnter * call ncm2#enable_for_buffer()
" // IMPORTANT: :help Ncm2PopupOpen for more information
"set completeopt=noinsert,menuone,noselect
"augroup PhpactorMappings
    "au!
    "au FileType php nmap <buffer> <Leader>u :PhpactorImportClass<CR>
    "au FileType php nmap <buffer> <Leader>e :PhpactorClassExpand<CR>
    "au FileType php nmap <buffer> <Leader>ua :PhpactorImportMissingClasses<CR>
"augroup END

