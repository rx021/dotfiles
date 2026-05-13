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
badd +2 TOOLS/laravel-vapor.md
badd +1 FRAMEWORKS/next-react.md
badd +1 LIBRARIES/stripe.md
badd +1 LANGUAGES/javascript.md
badd +1 .tmux.conf
badd +1 init.vim
badd +1 OS/config-vim.sh
badd +1 OS/config-tmux.sh
badd +7 SCRIPTS/.gitcommit.sh
badd +1 SCRIPTS/tmux-new-session.sh
badd +1 os-MAC/config-sh.sh
badd +3 os-ANDROID/config-bash.sh
badd +6 os-LINUX-remote/config-bash.sh
badd +1 README.md
badd +1 os-MAC/.zshrc
badd +3 os-ANDROID/.bash_profile
badd +76 os-LINUX-remote/.bash_profile
badd +1 SCRIPTS/.sync.sh
badd +1 os-MAC/apps-02-config.sh
badd +234 os-MAC/apps-01-install.sh
badd +20 os-ANDROID/apps-01-install.sh
badd +2 os-LINUX-remote/apps-01-install.sh
badd +17 TOOLS/ghostty.md
badd +4 TOOLS/ghostty/README.md
badd +12 TOOLS/ghostty/config
badd +1 os-MAC/.tmux.conf
badd +1 os-MAC/config-tmux.sh
badd +1 os-LINUX/config-tmux.sh
badd +7 os-LINUX/config-vim.sh
badd +1 os-LINUX/.bash_profile
badd +1 os-LINUX/init.vim
badd +8 os-MAC/config-vim.sh
badd +20 os-MAC/init.vim
badd +3 os-ANDROID/.tmux.conf
badd +1 .tmux.conf.x-leader
badd +23 os-LINUX-fedora/init.vim
badd +2 os-LINUX-fedora/.bashrc
badd +1 os-SHARED/config-hooks.sh
badd +13 os-SHARED/.bash-shared
badd +3 os-SHARED/.bashx
badd +13 os-LINUX-fedora/.bash_profile
badd +3 os-SHARED/.basha
badd +4 os-SHARED/.x.bash
badd +3 os-SHARED/.alias-git.bash
badd +1 os-SHARED/.utils.bash
badd +5 os-SHARED/.alias_git.bash
badd +5 os-SHARED/alias_tmux.bash
badd +4 os-SHARED/.alias_tmux.bash
badd +4 os-SHARED/.alias_filesystem.sh
badd +71 os-SHARED/.cli.sh
badd +151 os-SHARED/.alias_git.sh
badd +4 os-LINUX-fedora/config-bash.sh
badd +1 os-SHARED/.alias_tmux.sh
badd +19 os-SHARED/.utils.sh
badd +1 os-SHARED/.x.sh
badd +1 os-LINUX-fedora/.tmux.conf
badd +1 os-LINUX-fedora/config-tmux.sh
badd +4 os-LINUX-fedora/config-vim.sh
badd +1 thelp
badd +27 VIM/settings.vim
badd +152 VIM/plugins.vim
badd +35 os-LINUX-fedora/apps-01-install.sh
badd +23 os-LINUX-ubuntu/init.vim
badd +3 VIM/settings-basics.vim
badd +66 Session.vim
badd +1 os-SHARED/.alias_git_mac.sh
badd +1 os-SHARED/.alias_git_fedora.sh
badd +37 VIM/settings-status-line.vim
badd +1 _path=\$1
badd +24 VIM/settings-mappings.vim
badd +42 VIM/settings-tabs.vim
badd +176 VIM/plugins-ubuntu.vim
badd +5 .tmux.conf.x-common
badd +123 TOOLS/TMUX/tmux-settings-basic.conf
badd +33 TOOLS/TMUX/tmux-settings-bindings.conf
badd +1 TOOLS/TMUX/settings-status-bar.conf
badd +1 TOOLS/TMUX/settings-basic.conf
badd +34 TOOLS/TMUX/settings-bindings.conf
badd +128 TOOLS/TMUX/settings-basic.tmux.conf
badd +91 TOOLS/TMUX/tmux-settings.conf
badd +2 TOOLS/TMUX/tmux-bindings.conf
badd +8 TOOLS/TMUX/tmux-status-bar.conf
badd +18 TOOLS/TMUX/tmux-plugins.conf
badd +1 os-LINUX-ubuntu/logs.md
badd +48 os-LINUX-ubuntu/.tmux.conf
badd +1 TOOLS/TMUX/tmux-plugins-fedora.conf
badd +16 SYSTEMS/projects.md
badd +6 SYSTEMS/README-SYSTEMS.md
badd +0 TOOLS/ghostty/config.ghostty
argglobal
%argdel
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
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd _ | wincmd |
split
1wincmd k
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
exe '1resize ' . ((&lines * 16 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 50 + 75) / 151)
exe '2resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 50 + 75) / 151)
exe 'vert 3resize ' . ((&columns * 49 + 75) / 151)
exe 'vert 4resize ' . ((&columns * 50 + 75) / 151)
argglobal
balt os-LINUX-fedora/apps-01-install.sh
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 2 - ((1 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("TOOLS/ghostty/config", ":p")) | buffer TOOLS/ghostty/config | else | edit TOOLS/ghostty/config | endif
if &buftype ==# 'terminal'
  silent file TOOLS/ghostty/config
endif
balt TOOLS/ghostty/README.md
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 12 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("os-LINUX-fedora/apps-01-install.sh", ":p")) | buffer os-LINUX-fedora/apps-01-install.sh | else | edit os-LINUX-fedora/apps-01-install.sh | endif
if &buftype ==# 'terminal'
  silent file os-LINUX-fedora/apps-01-install.sh
endif
balt os-MAC/apps-01-install.sh
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 91 - ((21 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 91
normal! 02|
wincmd w
argglobal
if bufexists(fnamemodify("SCRIPTS/.sync.sh", ":p")) | buffer SCRIPTS/.sync.sh | else | edit SCRIPTS/.sync.sh | endif
if &buftype ==# 'terminal'
  silent file SCRIPTS/.sync.sh
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
let s:l = 16 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 16
normal! 014|
lcd ~/dotfiles
wincmd w
exe '1resize ' . ((&lines * 16 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 50 + 75) / 151)
exe '2resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 50 + 75) / 151)
exe 'vert 3resize ' . ((&columns * 49 + 75) / 151)
exe 'vert 4resize ' . ((&columns * 50 + 75) / 151)
tabnext
edit ~/dotfiles/os-MAC/.zshrc
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
exe '1resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 47 + 75) / 151)
exe '2resize ' . ((&lines * 16 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 47 + 75) / 151)
exe '3resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 3resize ' . ((&columns * 47 + 75) / 151)
exe '4resize ' . ((&lines * 16 + 19) / 38)
exe 'vert 4resize ' . ((&columns * 47 + 75) / 151)
exe '5resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 5resize ' . ((&columns * 55 + 75) / 151)
exe '6resize ' . ((&lines * 16 + 19) / 38)
exe 'vert 6resize ' . ((&columns * 55 + 75) / 151)
argglobal
balt ~/dotfiles/README.md
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 140 - ((11 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 140
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-SHARED/.alias_git.sh", ":p")) | buffer ~/dotfiles/os-SHARED/.alias_git.sh | else | edit ~/dotfiles/os-SHARED/.alias_git.sh | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-SHARED/.alias_git.sh
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
let s:l = 157 - ((0 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 157
normal! 046|
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-ANDROID/.bash_profile", ":p")) | buffer ~/dotfiles/os-ANDROID/.bash_profile | else | edit ~/dotfiles/os-ANDROID/.bash_profile | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-ANDROID/.bash_profile
endif
balt ~/dotfiles/os-MAC/.zshrc
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 135 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 135
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-SHARED/.alias_git.sh", ":p")) | buffer ~/dotfiles/os-SHARED/.alias_git.sh | else | edit ~/dotfiles/os-SHARED/.alias_git.sh | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-SHARED/.alias_git.sh
endif
balt ~/dotfiles/os-SHARED/.alias_filesystem.sh
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 169 - ((0 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 169
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
let s:l = 16 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 16
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-SHARED/.utils.sh", ":p")) | buffer ~/dotfiles/os-SHARED/.utils.sh | else | edit ~/dotfiles/os-SHARED/.utils.sh | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-SHARED/.utils.sh
endif
balt ~/dotfiles/os-MAC/.zshrc
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 25 - ((0 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 25
normal! 06|
lcd ~/dotfiles
wincmd w
exe '1resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 47 + 75) / 151)
exe '2resize ' . ((&lines * 16 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 47 + 75) / 151)
exe '3resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 3resize ' . ((&columns * 47 + 75) / 151)
exe '4resize ' . ((&lines * 16 + 19) / 38)
exe 'vert 4resize ' . ((&columns * 47 + 75) / 151)
exe '5resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 5resize ' . ((&columns * 55 + 75) / 151)
exe '6resize ' . ((&lines * 16 + 19) / 38)
exe 'vert 6resize ' . ((&columns * 55 + 75) / 151)
tabnext
edit ~/dotfiles/os-LINUX-fedora/.tmux.conf
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
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 16 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 50 + 75) / 151)
exe '2resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 50 + 75) / 151)
exe '3resize ' . ((&lines * 16 + 19) / 38)
exe 'vert 3resize ' . ((&columns * 49 + 75) / 151)
exe '4resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 4resize ' . ((&columns * 49 + 75) / 151)
exe 'vert 5resize ' . ((&columns * 50 + 75) / 151)
argglobal
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 1 - ((0 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-MAC/.tmux.conf", ":p")) | buffer ~/dotfiles/os-MAC/.tmux.conf | else | edit ~/dotfiles/os-MAC/.tmux.conf | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-MAC/.tmux.conf
endif
balt ~/dotfiles/os-LINUX-ubuntu/.tmux.conf
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
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/TOOLS/TMUX/tmux-plugins-fedora.conf", ":p")) | buffer ~/dotfiles/TOOLS/TMUX/tmux-plugins-fedora.conf | else | edit ~/dotfiles/TOOLS/TMUX/tmux-plugins-fedora.conf | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/TOOLS/TMUX/tmux-plugins-fedora.conf
endif
balt ~/dotfiles/TOOLS/TMUX/tmux-plugins.conf
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 54 - ((0 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 54
normal! 015|
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/TOOLS/TMUX/tmux-plugins-fedora.conf", ":p")) | buffer ~/dotfiles/TOOLS/TMUX/tmux-plugins-fedora.conf | else | edit ~/dotfiles/TOOLS/TMUX/tmux-plugins-fedora.conf | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/TOOLS/TMUX/tmux-plugins-fedora.conf
endif
balt ~/dotfiles/TOOLS/TMUX/tmux-plugins.conf
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 74 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 74
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/SCRIPTS/tmux-new-session.sh", ":p")) | buffer ~/dotfiles/SCRIPTS/tmux-new-session.sh | else | edit ~/dotfiles/SCRIPTS/tmux-new-session.sh | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/SCRIPTS/tmux-new-session.sh
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
let s:l = 11 - ((9 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 11
normal! 0
lcd ~/dotfiles
wincmd w
exe '1resize ' . ((&lines * 16 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 50 + 75) / 151)
exe '2resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 50 + 75) / 151)
exe '3resize ' . ((&lines * 16 + 19) / 38)
exe 'vert 3resize ' . ((&columns * 49 + 75) / 151)
exe '4resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 4resize ' . ((&columns * 49 + 75) / 151)
exe 'vert 5resize ' . ((&columns * 50 + 75) / 151)
tabnext
edit ~/dotfiles/os-LINUX-fedora/apps-01-install.sh
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
exe '1resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 50 + 75) / 151)
exe '2resize ' . ((&lines * 16 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 50 + 75) / 151)
exe 'vert 3resize ' . ((&columns * 49 + 75) / 151)
exe 'vert 4resize ' . ((&columns * 50 + 75) / 151)
argglobal
balt ~/dotfiles/os-MAC/apps-01-install.sh
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 57 - ((14 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 57
normal! 04|
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/VIM/settings-basics.vim", ":p")) | buffer ~/dotfiles/VIM/settings-basics.vim | else | edit ~/dotfiles/VIM/settings-basics.vim | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/VIM/settings-basics.vim
endif
balt ~/dotfiles/os-LINUX-fedora/init.vim
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 160 - ((8 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 160
normal! 04|
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
let s:l = 19 - ((17 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 19
normal! 023|
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/VIM/plugins.vim", ":p")) | buffer ~/dotfiles/VIM/plugins.vim | else | edit ~/dotfiles/VIM/plugins.vim | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/VIM/plugins.vim
endif
balt ~/dotfiles/VIM/settings-basics.vim
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 152 - ((10 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 152
normal! 0
lcd ~/dotfiles
wincmd w
exe '1resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 50 + 75) / 151)
exe '2resize ' . ((&lines * 16 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 50 + 75) / 151)
exe 'vert 3resize ' . ((&columns * 49 + 75) / 151)
exe 'vert 4resize ' . ((&columns * 50 + 75) / 151)
tabnext
edit ~/dotfiles/LANGUAGES/javascript.md
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
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 16 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 50 + 75) / 151)
exe '2resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 50 + 75) / 151)
exe '3resize ' . ((&lines * 16 + 19) / 38)
exe 'vert 3resize ' . ((&columns * 49 + 75) / 151)
exe '4resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 4resize ' . ((&columns * 49 + 75) / 151)
exe 'vert 5resize ' . ((&columns * 50 + 75) / 151)
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
let s:l = 1 - ((0 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/dotfiles
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
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/FRAMEWORKS/next-react.md", ":p")) | buffer ~/dotfiles/FRAMEWORKS/next-react.md | else | edit ~/dotfiles/FRAMEWORKS/next-react.md | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/FRAMEWORKS/next-react.md
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
let s:l = 1 - ((0 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/TOOLS/laravel-vapor.md", ":p")) | buffer ~/dotfiles/TOOLS/laravel-vapor.md | else | edit ~/dotfiles/TOOLS/laravel-vapor.md | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/TOOLS/laravel-vapor.md
endif
balt ~/dotfiles/SYSTEMS/projects.md
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
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/SYSTEMS/projects.md", ":p")) | buffer ~/dotfiles/SYSTEMS/projects.md | else | edit ~/dotfiles/SYSTEMS/projects.md | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/SYSTEMS/projects.md
endif
balt ~/dotfiles/SYSTEMS/README-SYSTEMS.md
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 19 - ((16 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 19
normal! 051|
lcd ~/dotfiles
wincmd w
exe '1resize ' . ((&lines * 16 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 50 + 75) / 151)
exe '2resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 50 + 75) / 151)
exe '3resize ' . ((&lines * 16 + 19) / 38)
exe 'vert 3resize ' . ((&columns * 49 + 75) / 151)
exe '4resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 4resize ' . ((&columns * 49 + 75) / 151)
exe 'vert 5resize ' . ((&columns * 50 + 75) / 151)
tabnext
edit ~/dotfiles/TOOLS/ghostty/README.md
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
exe 'vert 1resize ' . ((&columns * 50 + 75) / 151)
exe 'vert 2resize ' . ((&columns * 50 + 75) / 151)
exe 'vert 3resize ' . ((&columns * 49 + 75) / 151)
argglobal
balt ~/dotfiles/TOOLS/ghostty/config
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 1 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/TOOLS/ghostty/config", ":p")) | buffer ~/dotfiles/TOOLS/ghostty/config | else | edit ~/dotfiles/TOOLS/ghostty/config | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/TOOLS/ghostty/config
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
let s:l = 12 - ((11 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/TOOLS/ghostty/config.ghostty", ":p")) | buffer ~/dotfiles/TOOLS/ghostty/config.ghostty | else | edit ~/dotfiles/TOOLS/ghostty/config.ghostty | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/TOOLS/ghostty/config.ghostty
endif
balt ~/dotfiles/TOOLS/ghostty/config
setlocal foldmethod=indent
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 1 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/dotfiles
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 50 + 75) / 151)
exe 'vert 2resize ' . ((&columns * 50 + 75) / 151)
exe 'vert 3resize ' . ((&columns * 49 + 75) / 151)
tabnext 6
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
