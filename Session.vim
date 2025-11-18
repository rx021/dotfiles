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
badd +1 .tmux.conf
badd +1 init.vim
badd +1 OS/config-vim.sh
badd +1 OS/config-tmux.sh
badd +7 SCRIPTS/.gitcommit.sh
badd +1 SCRIPTS/tmux-new-session.sh
badd +12 os-MAC/config-sh.sh
badd +3 os-ANDROID/config-bash.sh
badd +6 os-LINUX-remote/config-bash.sh
badd +1 README.md
badd +1 os-MAC/.zshrc
badd +97 os-ANDROID/.bash_profile
badd +76 os-LINUX-remote/.bash_profile
badd +87 SCRIPTS/.sync.sh
badd +1 os-MAC/apps-02-config.sh
badd +1 os-MAC/apps-01-install.sh
badd +1 os-ANDROID/apps-01-install.sh
badd +2 os-LINUX-remote/apps-01-install.sh
badd +17 TOOLS/ghostty.md
badd +4 TOOLS/ghostty/README.md
badd +12 TOOLS/ghostty/config
badd +13 os-MAC/.tmux.conf
badd +1 os-MAC/config-tmux.sh
badd +1 os-LINUX/config-tmux.sh
badd +7 os-LINUX/config-vim.sh
badd +1 os-LINUX/.bash_profile
badd +1 os-LINUX/init.vim
badd +1 os-MAC/config-vim.sh
badd +1 os-MAC/init.vim
badd +3 os-ANDROID/.tmux.conf
badd +1 .tmux.conf.x-leader
badd +3 os-LINUX-fedora/init.vim
badd +2 os-LINUX-fedora/.bashrc
badd +1 os-SHARED/config-hooks.sh
badd +13 os-SHARED/.bash-shared
badd +3 os-SHARED/.bashx
badd +1 os-LINUX-fedora/.bash_profile
badd +3 os-SHARED/.basha
badd +4 os-SHARED/.x.bash
badd +3 os-SHARED/.alias-git.bash
badd +1 os-SHARED/.utils.bash
badd +5 os-SHARED/.alias_git.bash
badd +5 os-SHARED/alias_tmux.bash
badd +4 os-SHARED/.alias_tmux.bash
badd +16 os-SHARED/.alias_filesystem.sh
badd +71 os-SHARED/.cli.sh
badd +123 os-SHARED/.alias_git.sh
badd +12 os-LINUX-fedora/config-bash.sh
badd +1 os-SHARED/.alias_tmux.sh
badd +19 os-SHARED/.utils.sh
badd +1 os-SHARED/.x.sh
badd +141 os-LINUX-fedora/.tmux.conf
badd +1 os-LINUX-fedora/config-tmux.sh
badd +1 os-LINUX-fedora/config-vim.sh
badd +1 thelp
argglobal
%argdel
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit README.md
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
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
exe '1resize ' . ((&lines * 18 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 71 + 79) / 158)
exe '2resize ' . ((&lines * 20 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 71 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 86 + 79) / 158)
argglobal
balt LANGUAGES/javascript.md
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
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
balt README.md
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 4 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("TOOLS/ghostty/config", ":p")) | buffer TOOLS/ghostty/config | else | edit TOOLS/ghostty/config | endif
if &buftype ==# 'terminal'
  silent file TOOLS/ghostty/config
endif
balt README.md
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 12 - ((11 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 0
wincmd w
exe '1resize ' . ((&lines * 18 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 71 + 79) / 158)
exe '2resize ' . ((&lines * 20 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 71 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 86 + 79) / 158)
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
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
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
exe '1resize ' . ((&lines * 20 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 52 + 79) / 158)
exe '2resize ' . ((&lines * 18 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 52 + 79) / 158)
exe '3resize ' . ((&lines * 20 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 51 + 79) / 158)
exe '4resize ' . ((&lines * 18 + 21) / 42)
exe 'vert 4resize ' . ((&columns * 51 + 79) / 158)
exe '5resize ' . ((&lines * 20 + 21) / 42)
exe 'vert 5resize ' . ((&columns * 53 + 79) / 158)
exe '6resize ' . ((&lines * 18 + 21) / 42)
exe 'vert 6resize ' . ((&columns * 53 + 79) / 158)
argglobal
balt SCRIPTS/tmux-new-session.sh
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 32 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 32
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("os-MAC/config-sh.sh", ":p")) | buffer os-MAC/config-sh.sh | else | edit os-MAC/config-sh.sh | endif
if &buftype ==# 'terminal'
  silent file os-MAC/config-sh.sh
endif
balt SCRIPTS/tmux-new-session.sh
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 6 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("os-ANDROID/.bash_profile", ":p")) | buffer os-ANDROID/.bash_profile | else | edit os-ANDROID/.bash_profile | endif
if &buftype ==# 'terminal'
  silent file os-ANDROID/.bash_profile
endif
balt os-MAC/config-sh.sh
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 132 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 132
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("os-SHARED/.alias_git.sh", ":p")) | buffer os-SHARED/.alias_git.sh | else | edit os-SHARED/.alias_git.sh | endif
if &buftype ==# 'terminal'
  silent file os-SHARED/.alias_git.sh
endif
balt os-ANDROID/.bash_profile
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 133 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 133
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("os-LINUX-fedora/.bash_profile", ":p")) | buffer os-LINUX-fedora/.bash_profile | else | edit os-LINUX-fedora/.bash_profile | endif
if &buftype ==# 'terminal'
  silent file os-LINUX-fedora/.bash_profile
endif
balt os-LINUX-fedora/.bashrc
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 8 - ((7 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 8
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-SHARED/.utils.sh", ":p")) | buffer ~/dotfiles/os-SHARED/.utils.sh | else | edit ~/dotfiles/os-SHARED/.utils.sh | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-SHARED/.utils.sh
endif
balt ~/dotfiles/os-SHARED/.cli.sh
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 11 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 11
normal! 0
lcd ~/dotfiles
wincmd w
exe '1resize ' . ((&lines * 20 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 52 + 79) / 158)
exe '2resize ' . ((&lines * 18 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 52 + 79) / 158)
exe '3resize ' . ((&lines * 20 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 51 + 79) / 158)
exe '4resize ' . ((&lines * 18 + 21) / 42)
exe 'vert 4resize ' . ((&columns * 51 + 79) / 158)
exe '5resize ' . ((&lines * 20 + 21) / 42)
exe 'vert 5resize ' . ((&columns * 53 + 79) / 158)
exe '6resize ' . ((&lines * 18 + 21) / 42)
exe 'vert 6resize ' . ((&columns * 53 + 79) / 158)
tabnext
edit ~/dotfiles/SCRIPTS/tmux-new-session.sh
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
exe 'vert 1resize ' . ((&columns * 58 + 79) / 158)
exe 'vert 2resize ' . ((&columns * 41 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 57 + 79) / 158)
argglobal
balt ~/dotfiles/os-LINUX-fedora/config-tmux.sh
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 15 - ((0 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 15
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-MAC/.tmux.conf", ":p")) | buffer ~/dotfiles/os-MAC/.tmux.conf | else | edit ~/dotfiles/os-MAC/.tmux.conf | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-MAC/.tmux.conf
endif
balt ~/dotfiles/os-ANDROID/.tmux.conf
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 69 - ((19 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 69
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-LINUX-fedora/.tmux.conf", ":p")) | buffer ~/dotfiles/os-LINUX-fedora/.tmux.conf | else | edit ~/dotfiles/os-LINUX-fedora/.tmux.conf | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-LINUX-fedora/.tmux.conf
endif
balt ~/dotfiles/.tmux.conf.x-leader
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 148 - ((8 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 148
normal! 017|
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 58 + 79) / 158)
exe 'vert 2resize ' . ((&columns * 41 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 57 + 79) / 158)
tabnext
edit ~/dotfiles/os-MAC/config-vim.sh
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
exe 'vert 1resize ' . ((&columns * 58 + 79) / 158)
exe 'vert 2resize ' . ((&columns * 40 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 58 + 79) / 158)
argglobal
balt ~/dotfiles/os-MAC/config-tmux.sh
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 4 - ((3 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-LINUX-fedora/config-vim.sh", ":p")) | buffer ~/dotfiles/os-LINUX-fedora/config-vim.sh | else | edit ~/dotfiles/os-LINUX-fedora/config-vim.sh | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-LINUX-fedora/config-vim.sh
endif
balt ~/dotfiles/os-MAC/config-vim.sh
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 4 - ((3 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-LINUX-fedora/init.vim", ":p")) | buffer ~/dotfiles/os-LINUX-fedora/init.vim | else | edit ~/dotfiles/os-LINUX-fedora/init.vim | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-LINUX-fedora/init.vim
endif
balt ~/dotfiles/os-MAC/init.vim
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 260 - ((16 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 260
normal! 019|
wincmd w
exe 'vert 1resize ' . ((&columns * 58 + 79) / 158)
exe 'vert 2resize ' . ((&columns * 40 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 58 + 79) / 158)
tabnext
edit ~/dotfiles/LANGUAGES/javascript.md
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
exe 'vert 1resize ' . ((&columns * 43 + 79) / 158)
exe 'vert 2resize ' . ((&columns * 43 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 27 + 79) / 158)
exe 'vert 4resize ' . ((&columns * 42 + 79) / 158)
argglobal
balt ~/dotfiles/LIBRARIES/stripe.md
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 7 - ((5 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/LIBRARIES/stripe.md", ":p")) | buffer ~/dotfiles/LIBRARIES/stripe.md | else | edit ~/dotfiles/LIBRARIES/stripe.md | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/LIBRARIES/stripe.md
endif
balt ~/dotfiles/LANGUAGES/javascript.md
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 1 - ((0 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/FRAMEWORKS/next-react.md", ":p")) | buffer ~/dotfiles/FRAMEWORKS/next-react.md | else | edit ~/dotfiles/FRAMEWORKS/next-react.md | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/FRAMEWORKS/next-react.md
endif
balt ~/dotfiles/TOOLS/laravel-vapor.md
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 1 - ((0 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/TOOLS/laravel-vapor.md", ":p")) | buffer ~/dotfiles/TOOLS/laravel-vapor.md | else | edit ~/dotfiles/TOOLS/laravel-vapor.md | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/TOOLS/laravel-vapor.md
endif
balt ~/dotfiles/FRAMEWORKS/next-react.md
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 2 - ((0 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 43 + 79) / 158)
exe 'vert 2resize ' . ((&columns * 43 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 27 + 79) / 158)
exe 'vert 4resize ' . ((&columns * 42 + 79) / 158)
tabnext
edit ~/dotfiles/os-MAC/apps-01-install.sh
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
exe 'vert 1resize ' . ((&columns * 52 + 79) / 158)
exe 'vert 2resize ' . ((&columns * 51 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 53 + 79) / 158)
argglobal
balt ~/dotfiles/os-MAC/apps-02-config.sh
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 254 - ((0 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 254
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-ANDROID/apps-01-install.sh", ":p")) | buffer ~/dotfiles/os-ANDROID/apps-01-install.sh | else | edit ~/dotfiles/os-ANDROID/apps-01-install.sh | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-ANDROID/apps-01-install.sh
endif
balt ~/dotfiles/os-ANDROID/config-bash.sh
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 1 - ((0 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/SCRIPTS/.sync.sh", ":p")) | buffer ~/dotfiles/SCRIPTS/.sync.sh | else | edit ~/dotfiles/SCRIPTS/.sync.sh | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/SCRIPTS/.sync.sh
endif
balt ~/dotfiles/SCRIPTS/tmux-new-session.sh
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 1 - ((0 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 030|
wincmd w
exe 'vert 1resize ' . ((&columns * 52 + 79) / 158)
exe 'vert 2resize ' . ((&columns * 51 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 53 + 79) / 158)
tabnext 3
set stal=1
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
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
