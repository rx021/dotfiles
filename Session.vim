let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/dotfiles
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 TOOLS/laravel-vapor.md
badd +5 FRAMEWORKS/next-react.md
badd +2 LIBRARIES/stripe.md
badd +1 LANGUAGES/javascript.md
badd +17 .tmux.conf
badd +60 init.vim
badd +1 OS/config-vim.sh
badd +2 OS/config-tmux.sh
badd +1 SCRIPTS/.gitcommit.sh
badd +1 SCRIPTS/tmux-new-session.sh
badd +6 os-MAC/config-sh.sh
badd +3 os-ANDROID/config-bash.sh
badd +6 os-LINUX-remote/config-bash.sh
badd +1 README.md
badd +296 os-MAC/.zshrc
badd +1 os-ANDROID/.bash_profile
badd +20 os-LINUX-remote/.bash_profile
badd +17 SCRIPTS/.sync.sh
badd +6 os-MAC/apps-02-config.sh
badd +1 os-MAC/apps-01-install.sh
badd +1 os-ANDROID/apps-01-install.sh
badd +1 os-LINUX-remote/apps-01-install.sh
badd +17 TOOLS/ghostty.md
badd +5 TOOLS/ghostty/README.md
badd +1 TOOLS/ghostty/config
badd +3 .tmux.conf.x-leader
badd +1 os-LINUX-remote/.tmux.conf
badd +19 os-MAC/.tmux.conf
badd +1 OS/config-hooks.sh
badd +9 os-ANDROID/config-tmux.sh
badd +9 os-LINUX/config-tmux.sh
badd +9 os-LINUX-remote/config-tmux.sh
badd +8 os-MAC/config-tmux.sh
badd +17 os-LINUX/.tmux.conf
badd +0 os-ANDROID/.tmux.conf
badd +68 os-LINUX/.bash_profile
badd +0 os-LINUX/config-bash.sh
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit README.md
argglobal
balt LANGUAGES/javascript.md
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
tabnext
edit LANGUAGES/javascript.md
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd w
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 35 + 71) / 143)
exe 'vert 2resize ' . ((&columns * 35 + 71) / 143)
exe 'vert 3resize ' . ((&columns * 35 + 71) / 143)
exe 'vert 4resize ' . ((&columns * 35 + 71) / 143)
argglobal
balt LIBRARIES/stripe.md
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 6 - ((5 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 06|
wincmd w
argglobal
if bufexists(fnamemodify("LIBRARIES/stripe.md", ":p")) | buffer LIBRARIES/stripe.md | else | edit LIBRARIES/stripe.md | endif
if &buftype ==# 'terminal'
  silent file LIBRARIES/stripe.md
endif
balt LANGUAGES/javascript.md
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("FRAMEWORKS/next-react.md", ":p")) | buffer FRAMEWORKS/next-react.md | else | edit FRAMEWORKS/next-react.md | endif
if &buftype ==# 'terminal'
  silent file FRAMEWORKS/next-react.md
endif
balt TOOLS/laravel-vapor.md
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("TOOLS/laravel-vapor.md", ":p")) | buffer TOOLS/laravel-vapor.md | else | edit TOOLS/laravel-vapor.md | endif
if &buftype ==# 'terminal'
  silent file TOOLS/laravel-vapor.md
endif
balt FRAMEWORKS/next-react.md
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 2 - ((1 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 35 + 71) / 143)
exe 'vert 2resize ' . ((&columns * 35 + 71) / 143)
exe 'vert 3resize ' . ((&columns * 35 + 71) / 143)
exe 'vert 4resize ' . ((&columns * 35 + 71) / 143)
tabnext
edit os-MAC/apps-01-install.sh
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 47 + 71) / 143)
exe 'vert 2resize ' . ((&columns * 47 + 71) / 143)
exe 'vert 3resize ' . ((&columns * 47 + 71) / 143)
argglobal
balt os-MAC/apps-02-config.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 266 - ((9 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 266
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("os-ANDROID/apps-01-install.sh", ":p")) | buffer os-ANDROID/apps-01-install.sh | else | edit os-ANDROID/apps-01-install.sh | endif
if &buftype ==# 'terminal'
  silent file os-ANDROID/apps-01-install.sh
endif
balt os-ANDROID/config-bash.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("os-LINUX-remote/apps-01-install.sh", ":p")) | buffer os-LINUX-remote/apps-01-install.sh | else | edit os-LINUX-remote/apps-01-install.sh | endif
if &buftype ==# 'terminal'
  silent file os-LINUX-remote/apps-01-install.sh
endif
balt os-LINUX-remote/config-bash.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 13 - ((5 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 13
normal! 021|
wincmd w
exe 'vert 1resize ' . ((&columns * 47 + 71) / 143)
exe 'vert 2resize ' . ((&columns * 47 + 71) / 143)
exe 'vert 3resize ' . ((&columns * 47 + 71) / 143)
tabnext
edit os-MAC/.zshrc
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 47 + 71) / 143)
exe 'vert 2resize ' . ((&columns * 47 + 71) / 143)
exe 'vert 3resize ' . ((&columns * 47 + 71) / 143)
argglobal
balt README.md
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 3 - ((2 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("os-ANDROID/.bash_profile", ":p")) | buffer os-ANDROID/.bash_profile | else | edit os-ANDROID/.bash_profile | endif
if &buftype ==# 'terminal'
  silent file os-ANDROID/.bash_profile
endif
balt README.md
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 55 - ((4 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 55
normal! 045|
wincmd w
argglobal
if bufexists(fnamemodify("os-LINUX/.bash_profile", ":p")) | buffer os-LINUX/.bash_profile | else | edit os-LINUX/.bash_profile | endif
if &buftype ==# 'terminal'
  silent file os-LINUX/.bash_profile
endif
balt os-LINUX-remote/.bash_profile
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 69 - ((6 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 69
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 47 + 71) / 143)
exe 'vert 2resize ' . ((&columns * 47 + 71) / 143)
exe 'vert 3resize ' . ((&columns * 47 + 71) / 143)
tabnext
edit OS/config-vim.sh
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 47 + 71) / 143)
exe 'vert 2resize ' . ((&columns * 47 + 71) / 143)
exe 'vert 3resize ' . ((&columns * 47 + 71) / 143)
argglobal
balt SCRIPTS/.sync.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("os-LINUX/config-bash.sh", ":p")) | buffer os-LINUX/config-bash.sh | else | edit os-LINUX/config-bash.sh | endif
if &buftype ==# 'terminal'
  silent file os-LINUX/config-bash.sh
endif
balt os-LINUX/config-tmux.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 8 - ((7 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 8
normal! 026|
wincmd w
argglobal
if bufexists(fnamemodify("SCRIPTS/.gitcommit.sh", ":p")) | buffer SCRIPTS/.gitcommit.sh | else | edit SCRIPTS/.gitcommit.sh | endif
if &buftype ==# 'terminal'
  silent file SCRIPTS/.gitcommit.sh
endif
balt SCRIPTS/.sync.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 47 + 71) / 143)
exe 'vert 2resize ' . ((&columns * 47 + 71) / 143)
exe 'vert 3resize ' . ((&columns * 47 + 71) / 143)
tabnext
edit SCRIPTS/tmux-new-session.sh
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 47 + 71) / 143)
exe 'vert 2resize ' . ((&columns * 47 + 71) / 143)
exe 'vert 3resize ' . ((&columns * 47 + 71) / 143)
argglobal
balt .tmux.conf
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("os-ANDROID/.tmux.conf", ":p")) | buffer os-ANDROID/.tmux.conf | else | edit os-ANDROID/.tmux.conf | endif
if &buftype ==# 'terminal'
  silent file os-ANDROID/.tmux.conf
endif
balt os-LINUX/.tmux.conf
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 2 - ((1 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("init.vim", ":p")) | buffer init.vim | else | edit init.vim | endif
if &buftype ==# 'terminal'
  silent file init.vim
endif
balt .tmux.conf
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 191 - ((9 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 191
normal! 03|
wincmd w
exe 'vert 1resize ' . ((&columns * 47 + 71) / 143)
exe 'vert 2resize ' . ((&columns * 47 + 71) / 143)
exe 'vert 3resize ' . ((&columns * 47 + 71) / 143)
tabnext
edit TOOLS/ghostty/config
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 66 + 71) / 143)
exe 'vert 2resize ' . ((&columns * 76 + 71) / 143)
argglobal
balt TOOLS/ghostty/README.md
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("TOOLS/ghostty/README.md", ":p")) | buffer TOOLS/ghostty/README.md | else | edit TOOLS/ghostty/README.md | endif
if &buftype ==# 'terminal'
  silent file TOOLS/ghostty/README.md
endif
balt init.vim
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 5 - ((2 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
normal! 019|
wincmd w
exe 'vert 1resize ' . ((&columns * 66 + 71) / 143)
exe 'vert 2resize ' . ((&columns * 76 + 71) / 143)
tabnext 5
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
