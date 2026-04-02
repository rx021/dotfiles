let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/dotfiles
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
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
badd +1 os-MAC/config-sh.sh
badd +3 os-ANDROID/config-bash.sh
badd +6 os-LINUX-remote/config-bash.sh
badd +1 README.md
badd +1 os-MAC/.zshrc
badd +3 os-ANDROID/.bash_profile
badd +76 os-LINUX-remote/.bash_profile
badd +1 SCRIPTS/.sync.sh
badd +1 os-MAC/apps-02-config.sh
badd +3 os-MAC/apps-01-install.sh
badd +20 os-ANDROID/apps-01-install.sh
badd +2 os-LINUX-remote/apps-01-install.sh
badd +17 TOOLS/ghostty.md
badd +1 TOOLS/ghostty/README.md
badd +12 TOOLS/ghostty/config
badd +1 os-MAC/.tmux.conf
badd +1 os-MAC/config-tmux.sh
badd +1 os-LINUX/config-tmux.sh
badd +7 os-LINUX/config-vim.sh
badd +1 os-LINUX/.bash_profile
badd +1 os-LINUX/init.vim
badd +8 os-MAC/config-vim.sh
badd +17 os-MAC/init.vim
badd +3 os-ANDROID/.tmux.conf
badd +1 .tmux.conf.x-leader
badd +19 os-LINUX-fedora/init.vim
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
badd +141 os-LINUX-fedora/.tmux.conf
badd +1 os-LINUX-fedora/config-tmux.sh
badd +4 os-LINUX-fedora/config-vim.sh
badd +1 thelp
badd +27 VIM/settings.vim
badd +35 VIM/plugins.vim
badd +35 os-LINUX-fedora/apps-01-install.sh
badd +23 os-LINUX-ubuntu/init.vim
badd +1 VIM/settings-basics.vim
badd +66 Session.vim
badd +1 os-SHARED/.alias_git_mac.sh
badd +1 os-SHARED/.alias_git_fedora.sh
badd +37 VIM/settings-status-line.vim
badd +1 _path=\$1
badd +24 VIM/settings-mappings.vim
badd +42 VIM/settings-tabs.vim
badd +176 VIM/plugins-ubuntu.vim
argglobal
%argdel
edit README.md
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
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 1resize ' . ((&columns * 52 + 79) / 158)
exe '2resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 2resize ' . ((&columns * 52 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 52 + 79) / 158)
exe 'vert 4resize ' . ((&columns * 52 + 79) / 158)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 05|
wincmd w
argglobal
if bufexists("TOOLS/ghostty/config") | buffer TOOLS/ghostty/config | else | edit TOOLS/ghostty/config | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 12 - ((8 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 0
wincmd w
argglobal
if bufexists("os-MAC/apps-01-install.sh") | buffer os-MAC/apps-01-install.sh | else | edit os-MAC/apps-01-install.sh | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 3 - ((2 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 0
wincmd w
argglobal
if bufexists("SCRIPTS/.sync.sh") | buffer SCRIPTS/.sync.sh | else | edit SCRIPTS/.sync.sh | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/dotfiles
wincmd w
4wincmd w
exe '1resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 1resize ' . ((&columns * 52 + 79) / 158)
exe '2resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 2resize ' . ((&columns * 52 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 52 + 79) / 158)
exe 'vert 4resize ' . ((&columns * 52 + 79) / 158)
tabedit ~/dotfiles/os-MAC/.zshrc
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
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 20 + 20) / 40)
exe 'vert 1resize ' . ((&columns * 49 + 79) / 158)
exe '2resize ' . ((&lines * 16 + 20) / 40)
exe 'vert 2resize ' . ((&columns * 49 + 79) / 158)
exe '3resize ' . ((&lines * 20 + 20) / 40)
exe 'vert 3resize ' . ((&columns * 49 + 79) / 158)
exe '4resize ' . ((&lines * 16 + 20) / 40)
exe 'vert 4resize ' . ((&columns * 49 + 79) / 158)
exe '5resize ' . ((&lines * 20 + 20) / 40)
exe 'vert 5resize ' . ((&columns * 58 + 79) / 158)
exe '6resize ' . ((&lines * 16 + 20) / 40)
exe 'vert 6resize ' . ((&columns * 58 + 79) / 158)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 140 - ((12 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
140
normal! 0
wincmd w
argglobal
if bufexists("~/dotfiles/os-SHARED/.alias_git.sh") | buffer ~/dotfiles/os-SHARED/.alias_git.sh | else | edit ~/dotfiles/os-SHARED/.alias_git.sh | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 157 - ((6 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
157
normal! 046|
wincmd w
argglobal
if bufexists("~/dotfiles/os-ANDROID/.bash_profile") | buffer ~/dotfiles/os-ANDROID/.bash_profile | else | edit ~/dotfiles/os-ANDROID/.bash_profile | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 135 - ((10 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
135
normal! 0
wincmd w
argglobal
if bufexists("~/dotfiles/os-SHARED/.alias_git.sh") | buffer ~/dotfiles/os-SHARED/.alias_git.sh | else | edit ~/dotfiles/os-SHARED/.alias_git.sh | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 169 - ((5 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
169
normal! 0
wincmd w
argglobal
if bufexists("~/dotfiles/os-LINUX-fedora/.bashrc") | buffer ~/dotfiles/os-LINUX-fedora/.bashrc | else | edit ~/dotfiles/os-LINUX-fedora/.bashrc | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 15 - ((14 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists("~/dotfiles/os-SHARED/.utils.sh") | buffer ~/dotfiles/os-SHARED/.utils.sh | else | edit ~/dotfiles/os-SHARED/.utils.sh | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 25 - ((9 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 06|
lcd ~/dotfiles
wincmd w
exe '1resize ' . ((&lines * 20 + 20) / 40)
exe 'vert 1resize ' . ((&columns * 49 + 79) / 158)
exe '2resize ' . ((&lines * 16 + 20) / 40)
exe 'vert 2resize ' . ((&columns * 49 + 79) / 158)
exe '3resize ' . ((&lines * 20 + 20) / 40)
exe 'vert 3resize ' . ((&columns * 49 + 79) / 158)
exe '4resize ' . ((&lines * 16 + 20) / 40)
exe 'vert 4resize ' . ((&columns * 49 + 79) / 158)
exe '5resize ' . ((&lines * 20 + 20) / 40)
exe 'vert 5resize ' . ((&columns * 58 + 79) / 158)
exe '6resize ' . ((&lines * 16 + 20) / 40)
exe 'vert 6resize ' . ((&columns * 58 + 79) / 158)
tabedit ~/dotfiles/os-MAC/.tmux.conf
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 48 + 79) / 158)
exe 'vert 2resize ' . ((&columns * 59 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 49 + 79) / 158)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 77 - ((1 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
77
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists("~/dotfiles/os-LINUX-fedora/.tmux.conf") | buffer ~/dotfiles/os-LINUX-fedora/.tmux.conf | else | edit ~/dotfiles/os-LINUX-fedora/.tmux.conf | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 215 - ((22 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
215
normal! 07|
lcd ~/dotfiles
wincmd w
argglobal
if bufexists("~/dotfiles/SCRIPTS/tmux-new-session.sh") | buffer ~/dotfiles/SCRIPTS/tmux-new-session.sh | else | edit ~/dotfiles/SCRIPTS/tmux-new-session.sh | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 12 - ((0 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 0
lcd ~/dotfiles
wincmd w
exe 'vert 1resize ' . ((&columns * 48 + 79) / 158)
exe 'vert 2resize ' . ((&columns * 59 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 49 + 79) / 158)
tabedit ~/dotfiles/os-MAC/apps-01-install.sh
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
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 1resize ' . ((&columns * 52 + 79) / 158)
exe '2resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 2resize ' . ((&columns * 52 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 52 + 79) / 158)
exe 'vert 4resize ' . ((&columns * 52 + 79) / 158)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 234 - ((9 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
234
normal! 044|
lcd ~/dotfiles
wincmd w
argglobal
if bufexists("~/dotfiles/os-LINUX-fedora/init.vim") | buffer ~/dotfiles/os-LINUX-fedora/init.vim | else | edit ~/dotfiles/os-LINUX-fedora/init.vim | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 23 - ((13 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists("~/dotfiles/os-MAC/init.vim") | buffer ~/dotfiles/os-MAC/init.vim | else | edit ~/dotfiles/os-MAC/init.vim | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 22 - ((21 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists("~/dotfiles/VIM/settings-basics.vim") | buffer ~/dotfiles/VIM/settings-basics.vim | else | edit ~/dotfiles/VIM/settings-basics.vim | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 09|
lcd ~/dotfiles
wincmd w
exe '1resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 1resize ' . ((&columns * 52 + 79) / 158)
exe '2resize ' . ((&lines * 18 + 20) / 40)
exe 'vert 2resize ' . ((&columns * 52 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 52 + 79) / 158)
exe 'vert 4resize ' . ((&columns * 52 + 79) / 158)
tabedit ~/dotfiles/LANGUAGES/javascript.md
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
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 39 + 79) / 158)
exe 'vert 2resize ' . ((&columns * 39 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 39 + 79) / 158)
exe 'vert 4resize ' . ((&columns * 38 + 79) / 158)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 5 - ((3 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists("~/dotfiles/LIBRARIES/stripe.md") | buffer ~/dotfiles/LIBRARIES/stripe.md | else | edit ~/dotfiles/LIBRARIES/stripe.md | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists("~/dotfiles/FRAMEWORKS/next-react.md") | buffer ~/dotfiles/FRAMEWORKS/next-react.md | else | edit ~/dotfiles/FRAMEWORKS/next-react.md | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists("~/dotfiles/TOOLS/laravel-vapor.md") | buffer ~/dotfiles/TOOLS/laravel-vapor.md | else | edit ~/dotfiles/TOOLS/laravel-vapor.md | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 3 - ((2 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 0
lcd ~/dotfiles
wincmd w
exe 'vert 1resize ' . ((&columns * 39 + 79) / 158)
exe 'vert 2resize ' . ((&columns * 39 + 79) / 158)
exe 'vert 3resize ' . ((&columns * 39 + 79) / 158)
exe 'vert 4resize ' . ((&columns * 38 + 79) / 158)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=0 winminwidth=0 shortmess=filnxtToOFI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
