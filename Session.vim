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
badd +106 os-MAC/.zshrc
badd +99 os-ANDROID/.bash_profile
badd +76 os-LINUX-remote/.bash_profile
badd +1 SCRIPTS/.sync.sh
badd +1 os-MAC/apps-02-config.sh
badd +1 os-MAC/apps-01-install.sh
badd +1 os-ANDROID/apps-01-install.sh
badd +1 os-LINUX-remote/apps-01-install.sh
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
badd +15 os-LINUX-fedora/.bashrc
badd +1 os-SHARED/config-hooks.sh
badd +13 os-SHARED/.bash-shared
badd +3 os-SHARED/.bashx
badd +15 os-LINUX-fedora/.bash_profile
badd +3 os-SHARED/.basha
badd +4 os-SHARED/.x.bash
badd +3 os-SHARED/.alias-git.bash
badd +1 os-SHARED/.utils.bash
badd +5 os-SHARED/.alias_git.bash
badd +5 os-SHARED/alias_tmux.bash
badd +4 os-SHARED/.alias_tmux.bash
badd +2 os-SHARED/.alias_filesystem.sh
badd +71 os-SHARED/.cli.sh
badd +1 os-SHARED/.alias_git.sh
badd +12 os-LINUX-fedora/config-bash.sh
badd +1 os-SHARED/.alias_tmux.sh
badd +17 os-SHARED/.utils.sh
badd +1 os-SHARED/.x.sh
badd +141 os-LINUX-fedora/.tmux.conf
badd +1 os-LINUX-fedora/config-tmux.sh
badd +1 os-LINUX-fedora/config-vim.sh
badd +1 thelp
badd +1 os-SHARED/.alias_filesystem_fedora.sh
badd +2 os-SHARED/.alias_git_fedora.sh
badd +4 os-SHARED/.alias_filesystem_mac.sh
badd +0 os-SHARED/.alias_git_mac.sh
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
exe 'vert 1resize ' . ((&columns * 79 + 79) / 158)
exe '2resize ' . ((&lines * 18 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 79 + 79) / 158)
exe '3resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 78 + 79) / 158)
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
let s:l = 4 - ((3 * winheight(0) + 9) / 18)
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
let s:l = 12 - ((10 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 0
wincmd w
exe '1resize ' . ((&lines * 18 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 79 + 79) / 158)
exe '2resize ' . ((&lines * 18 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 79 + 79) / 158)
exe '3resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 78 + 79) / 158)
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
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
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
exe '1resize ' . ((&lines * 12 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 52 + 79) / 158)
exe '2resize ' . ((&lines * 13 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 52 + 79) / 158)
exe '3resize ' . ((&lines * 12 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 52 + 79) / 158)
exe '4resize ' . ((&lines * 19 + 21) / 42)
exe 'vert 4resize ' . ((&columns * 52 + 79) / 158)
exe '5resize ' . ((&lines * 19 + 21) / 42)
exe 'vert 5resize ' . ((&columns * 52 + 79) / 158)
exe '6resize ' . ((&lines * 12 + 21) / 42)
exe 'vert 6resize ' . ((&columns * 52 + 79) / 158)
exe '7resize ' . ((&lines * 13 + 21) / 42)
exe 'vert 7resize ' . ((&columns * 52 + 79) / 158)
exe '8resize ' . ((&lines * 12 + 21) / 42)
exe 'vert 8resize ' . ((&columns * 52 + 79) / 158)
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
let s:l = 13 - ((6 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 13
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("os-SHARED/.alias_filesystem_mac.sh", ":p")) | buffer os-SHARED/.alias_filesystem_mac.sh | else | edit os-SHARED/.alias_filesystem_mac.sh | endif
if &buftype ==# 'terminal'
  silent file os-SHARED/.alias_filesystem_mac.sh
endif
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 3 - ((2 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-SHARED/.alias_git_mac.sh", ":p")) | buffer ~/dotfiles/os-SHARED/.alias_git_mac.sh | else | edit ~/dotfiles/os-SHARED/.alias_git_mac.sh | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-SHARED/.alias_git_mac.sh
endif
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 4 - ((3 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-ANDROID/.bash_profile", ":p")) | buffer ~/dotfiles/os-ANDROID/.bash_profile | else | edit ~/dotfiles/os-ANDROID/.bash_profile | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-ANDROID/.bash_profile
endif
balt ~/dotfiles/os-MAC/config-sh.sh
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 99 - ((4 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 99
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-SHARED/.alias_git.sh", ":p")) | buffer ~/dotfiles/os-SHARED/.alias_git.sh | else | edit ~/dotfiles/os-SHARED/.alias_git.sh | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-SHARED/.alias_git.sh
endif
balt ~/dotfiles/os-ANDROID/.bash_profile
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-LINUX-fedora/.bashrc", ":p")) | buffer ~/dotfiles/os-LINUX-fedora/.bashrc | else | edit ~/dotfiles/os-LINUX-fedora/.bashrc | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-LINUX-fedora/.bashrc
endif
balt ~/dotfiles/os-LINUX-fedora/.bash_profile
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 12 - ((1 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-SHARED/.alias_filesystem_fedora.sh", ":p")) | buffer ~/dotfiles/os-SHARED/.alias_filesystem_fedora.sh | else | edit ~/dotfiles/os-SHARED/.alias_filesystem_fedora.sh | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-SHARED/.alias_filesystem_fedora.sh
endif
balt ~/dotfiles/os-SHARED/.alias_git_fedora.sh
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 4 - ((3 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-SHARED/.alias_git_fedora.sh", ":p")) | buffer ~/dotfiles/os-SHARED/.alias_git_fedora.sh | else | edit ~/dotfiles/os-SHARED/.alias_git_fedora.sh | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-SHARED/.alias_git_fedora.sh
endif
balt ~/dotfiles/os-SHARED/.alias_filesystem_fedora.sh
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 3 - ((2 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3
normal! 0
lcd ~/dotfiles
wincmd w
6wincmd w
exe '1resize ' . ((&lines * 12 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 52 + 79) / 158)
exe '2resize ' . ((&lines * 13 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 52 + 79) / 158)
exe '3resize ' . ((&lines * 12 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 52 + 79) / 158)
exe '4resize ' . ((&lines * 19 + 21) / 42)
exe 'vert 4resize ' . ((&columns * 52 + 79) / 158)
exe '5resize ' . ((&lines * 19 + 21) / 42)
exe 'vert 5resize ' . ((&columns * 52 + 79) / 158)
exe '6resize ' . ((&lines * 12 + 21) / 42)
exe 'vert 6resize ' . ((&columns * 52 + 79) / 158)
exe '7resize ' . ((&lines * 13 + 21) / 42)
exe 'vert 7resize ' . ((&columns * 52 + 79) / 158)
exe '8resize ' . ((&lines * 12 + 21) / 42)
exe 'vert 8resize ' . ((&columns * 52 + 79) / 158)
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
exe '1resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 52 + 79) / 158)
exe '2resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 53 + 79) / 158)
exe '3resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 51 + 79) / 158)
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
let s:l = 15 - ((13 * winheight(0) + 18) / 37)
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
let s:l = 11 - ((9 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 11
normal! 017|
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
let s:l = 140 - ((14 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 140
normal! 07|
wincmd w
exe '1resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 52 + 79) / 158)
exe '2resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 53 + 79) / 158)
exe '3resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 51 + 79) / 158)
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
exe '1resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 52 + 79) / 158)
exe '2resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 52 + 79) / 158)
exe '3resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 52 + 79) / 158)
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
let s:l = 4 - ((3 * winheight(0) + 18) / 37)
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
let s:l = 4 - ((3 * winheight(0) + 18) / 37)
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
let s:l = 1 - ((0 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 52 + 79) / 158)
exe '2resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 52 + 79) / 158)
exe '3resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 52 + 79) / 158)
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
exe '1resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 39 + 79) / 158)
exe '2resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 39 + 79) / 158)
exe '3resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 39 + 79) / 158)
exe '4resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 4resize ' . ((&columns * 38 + 79) / 158)
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
let s:l = 7 - ((6 * winheight(0) + 18) / 37)
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
let s:l = 1 - ((0 * winheight(0) + 18) / 37)
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
let s:l = 1 - ((0 * winheight(0) + 18) / 37)
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
let s:l = 2 - ((0 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
wincmd w
exe '1resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 39 + 79) / 158)
exe '2resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 39 + 79) / 158)
exe '3resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 39 + 79) / 158)
exe '4resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 4resize ' . ((&columns * 38 + 79) / 158)
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
exe '1resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 52 + 79) / 158)
exe '2resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 53 + 79) / 158)
exe '3resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 51 + 79) / 158)
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
let s:l = 256 - ((1 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 256
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
let s:l = 1 - ((0 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-LINUX-remote/apps-01-install.sh", ":p")) | buffer ~/dotfiles/os-LINUX-remote/apps-01-install.sh | else | edit ~/dotfiles/os-LINUX-remote/apps-01-install.sh | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-LINUX-remote/apps-01-install.sh
endif
balt ~/dotfiles/os-LINUX-remote/config-bash.sh
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 2 - ((1 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
wincmd w
exe '1resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 1resize ' . ((&columns * 52 + 79) / 158)
exe '2resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 2resize ' . ((&columns * 53 + 79) / 158)
exe '3resize ' . ((&lines * 37 + 21) / 42)
exe 'vert 3resize ' . ((&columns * 51 + 79) / 158)
tabnext 2
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
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
