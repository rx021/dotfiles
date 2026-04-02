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
badd +1 os-MAC/config-sh.sh
badd +3 os-ANDROID/config-bash.sh
badd +6 os-LINUX-remote/config-bash.sh
badd +1 README.md
badd +552 os-MAC/.zshrc
badd +3 os-ANDROID/.bash_profile
badd +76 os-LINUX-remote/.bash_profile
badd +1 SCRIPTS/.sync.sh
badd +1 os-MAC/apps-02-config.sh
badd +403 os-MAC/apps-01-install.sh
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
badd +8 os-MAC/config-vim.sh
badd +1 os-MAC/init.vim
badd +3 os-ANDROID/.tmux.conf
badd +1 .tmux.conf.x-leader
badd +6 os-LINUX-fedora/init.vim
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
badd +137 os-SHARED/.alias_git.sh
badd +4 os-LINUX-fedora/config-bash.sh
badd +1 os-SHARED/.alias_tmux.sh
badd +19 os-SHARED/.utils.sh
badd +1 os-SHARED/.x.sh
badd +141 os-LINUX-fedora/.tmux.conf
badd +1 os-LINUX-fedora/config-tmux.sh
badd +4 os-LINUX-fedora/config-vim.sh
badd +1 thelp
badd +27 VIM/settings.vim
badd +187 VIM/plugins.vim
badd +50 os-LINUX-fedora/apps-01-install.sh
badd +66 Session.vim
badd +1 os-SHARED/.alias_git_mac.sh
badd +1 os-SHARED/.alias_git_fedora.sh
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
exe '1resize ' . ((&lines * 19 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 82 + 88) / 176)
exe '2resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 82 + 88) / 176)
exe 'vert 3resize ' . ((&columns * 83 + 88) / 176)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
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
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 4 - ((0 * winheight(0) + 9) / 18)
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
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 12 - ((0 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 0
wincmd w
exe '1resize ' . ((&lines * 19 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 82 + 88) / 176)
exe '2resize ' . ((&lines * 18 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 82 + 88) / 176)
exe 'vert 3resize ' . ((&columns * 83 + 88) / 176)
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
exe '1resize ' . ((&lines * 19 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 55 + 88) / 176)
exe '2resize ' . ((&lines * 15 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 55 + 88) / 176)
exe '3resize ' . ((&lines * 19 + 19) / 38)
exe 'vert 3resize ' . ((&columns * 54 + 88) / 176)
exe '4resize ' . ((&lines * 15 + 19) / 38)
exe 'vert 4resize ' . ((&columns * 54 + 88) / 176)
exe '5resize ' . ((&lines * 19 + 19) / 38)
exe 'vert 5resize ' . ((&columns * 65 + 88) / 176)
exe '6resize ' . ((&lines * 15 + 19) / 38)
exe 'vert 6resize ' . ((&columns * 65 + 88) / 176)
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
let s:l = 142 - ((13 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 142
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("os-SHARED/.alias_git.sh", ":p")) | buffer os-SHARED/.alias_git.sh | else | edit os-SHARED/.alias_git.sh | endif
if &buftype ==# 'terminal'
  silent file os-SHARED/.alias_git.sh
endif
balt os-MAC/config-sh.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 157 - ((6 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 157
normal! 046|
wincmd w
argglobal
if bufexists(fnamemodify("os-ANDROID/.bash_profile", ":p")) | buffer os-ANDROID/.bash_profile | else | edit os-ANDROID/.bash_profile | endif
if &buftype ==# 'terminal'
  silent file os-ANDROID/.bash_profile
endif
balt os-MAC/.zshrc
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 136 - ((11 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 136
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("os-SHARED/.alias_git.sh", ":p")) | buffer os-SHARED/.alias_git.sh | else | edit os-SHARED/.alias_git.sh | endif
if &buftype ==# 'terminal'
  silent file os-SHARED/.alias_git.sh
endif
balt os-SHARED/.alias_filesystem.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 169 - ((5 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 169
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("os-LINUX-fedora/.bashrc", ":p")) | buffer os-LINUX-fedora/.bashrc | else | edit os-LINUX-fedora/.bashrc | endif
if &buftype ==# 'terminal'
  silent file os-LINUX-fedora/.bashrc
endif
balt os-LINUX-fedora/.bash_profile
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 15 - ((14 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 15
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-SHARED/.utils.sh", ":p")) | buffer ~/dotfiles/os-SHARED/.utils.sh | else | edit ~/dotfiles/os-SHARED/.utils.sh | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-SHARED/.utils.sh
endif
balt ~/dotfiles/os-MAC/.zshrc
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 25 - ((8 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 25
normal! 06|
lcd ~/dotfiles
wincmd w
exe '1resize ' . ((&lines * 19 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 55 + 88) / 176)
exe '2resize ' . ((&lines * 15 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 55 + 88) / 176)
exe '3resize ' . ((&lines * 19 + 19) / 38)
exe 'vert 3resize ' . ((&columns * 54 + 88) / 176)
exe '4resize ' . ((&lines * 15 + 19) / 38)
exe 'vert 4resize ' . ((&columns * 54 + 88) / 176)
exe '5resize ' . ((&lines * 19 + 19) / 38)
exe 'vert 5resize ' . ((&columns * 65 + 88) / 176)
exe '6resize ' . ((&lines * 15 + 19) / 38)
exe 'vert 6resize ' . ((&columns * 65 + 88) / 176)
tabnext
edit ~/dotfiles/os-MAC/.tmux.conf
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
exe 'vert 1resize ' . ((&columns * 54 + 88) / 176)
exe 'vert 2resize ' . ((&columns * 65 + 88) / 176)
exe 'vert 3resize ' . ((&columns * 55 + 88) / 176)
argglobal
balt ~/dotfiles/SCRIPTS/tmux-new-session.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 77 - ((1 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 77
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-LINUX-fedora/.tmux.conf", ":p")) | buffer ~/dotfiles/os-LINUX-fedora/.tmux.conf | else | edit ~/dotfiles/os-LINUX-fedora/.tmux.conf | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-LINUX-fedora/.tmux.conf
endif
balt ~/dotfiles/SCRIPTS/tmux-new-session.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 215 - ((21 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 215
normal! 07|
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/SCRIPTS/tmux-new-session.sh", ":p")) | buffer ~/dotfiles/SCRIPTS/tmux-new-session.sh | else | edit ~/dotfiles/SCRIPTS/tmux-new-session.sh | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/SCRIPTS/tmux-new-session.sh
endif
balt ~/dotfiles/os-LINUX-fedora/.bash_profile
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 12 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 0
lcd ~/dotfiles
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 54 + 88) / 176)
exe 'vert 2resize ' . ((&columns * 65 + 88) / 176)
exe 'vert 3resize ' . ((&columns * 55 + 88) / 176)
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
exe '1resize ' . ((&lines * 17 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 55 + 88) / 176)
exe '2resize ' . ((&lines * 17 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 55 + 88) / 176)
exe '3resize ' . ((&lines * 17 + 19) / 38)
exe 'vert 3resize ' . ((&columns * 54 + 88) / 176)
exe '4resize ' . ((&lines * 17 + 19) / 38)
exe 'vert 4resize ' . ((&columns * 54 + 88) / 176)
exe 'vert 5resize ' . ((&columns * 65 + 88) / 176)
argglobal
balt ~/dotfiles/os-LINUX-fedora/apps-01-install.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 403 - ((14 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 403
normal! 037|
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-SHARED/.alias_git.sh", ":p")) | buffer ~/dotfiles/os-SHARED/.alias_git.sh | else | edit ~/dotfiles/os-SHARED/.alias_git.sh | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-SHARED/.alias_git.sh
endif
balt ~/dotfiles/os-SHARED/.alias_git_fedora.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 151 - ((5 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 151
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-MAC/init.vim", ":p")) | buffer ~/dotfiles/os-MAC/init.vim | else | edit ~/dotfiles/os-MAC/init.vim | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-MAC/init.vim
endif
balt ~/dotfiles/os-LINUX-fedora/config-vim.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-LINUX-fedora/init.vim", ":p")) | buffer ~/dotfiles/os-LINUX-fedora/init.vim | else | edit ~/dotfiles/os-LINUX-fedora/init.vim | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-LINUX-fedora/init.vim
endif
balt ~/dotfiles/os-LINUX-fedora/config-vim.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 6 - ((1 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/VIM/plugins.vim", ":p")) | buffer ~/dotfiles/VIM/plugins.vim | else | edit ~/dotfiles/VIM/plugins.vim | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/VIM/plugins.vim
endif
balt ~/dotfiles/VIM/settings.vim
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 181 - ((26 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 181
normal! 0
lcd ~/dotfiles
wincmd w
exe '1resize ' . ((&lines * 17 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 55 + 88) / 176)
exe '2resize ' . ((&lines * 17 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 55 + 88) / 176)
exe '3resize ' . ((&lines * 17 + 19) / 38)
exe 'vert 3resize ' . ((&columns * 54 + 88) / 176)
exe '4resize ' . ((&lines * 17 + 19) / 38)
exe 'vert 4resize ' . ((&columns * 54 + 88) / 176)
exe 'vert 5resize ' . ((&columns * 65 + 88) / 176)
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
exe 'vert 1resize ' . ((&columns * 41 + 88) / 176)
exe 'vert 2resize ' . ((&columns * 41 + 88) / 176)
exe 'vert 3resize ' . ((&columns * 41 + 88) / 176)
exe 'vert 4resize ' . ((&columns * 40 + 88) / 176)
argglobal
balt ~/dotfiles/os-MAC/config-vim.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 5 - ((3 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/LIBRARIES/stripe.md", ":p")) | buffer ~/dotfiles/LIBRARIES/stripe.md | else | edit ~/dotfiles/LIBRARIES/stripe.md | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/LIBRARIES/stripe.md
endif
balt ~/dotfiles/LANGUAGES/javascript.md
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 19) / 38)
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
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 19) / 38)
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
balt ~/dotfiles/LANGUAGES/javascript.md
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 2 - ((0 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
lcd ~/dotfiles
wincmd w
exe 'vert 1resize ' . ((&columns * 41 + 88) / 176)
exe 'vert 2resize ' . ((&columns * 41 + 88) / 176)
exe 'vert 3resize ' . ((&columns * 41 + 88) / 176)
exe 'vert 4resize ' . ((&columns * 40 + 88) / 176)
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
exe 'vert 1resize ' . ((&columns * 58 + 88) / 176)
exe 'vert 2resize ' . ((&columns * 58 + 88) / 176)
exe 'vert 3resize ' . ((&columns * 58 + 88) / 176)
argglobal
balt ~/dotfiles/LANGUAGES/javascript.md
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 253 - ((3 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 253
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/os-ANDROID/apps-01-install.sh", ":p")) | buffer ~/dotfiles/os-ANDROID/apps-01-install.sh | else | edit ~/dotfiles/os-ANDROID/apps-01-install.sh | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/os-ANDROID/apps-01-install.sh
endif
balt ~/dotfiles/os-MAC/apps-01-install.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/dotfiles
wincmd w
argglobal
if bufexists(fnamemodify("~/dotfiles/SCRIPTS/.sync.sh", ":p")) | buffer ~/dotfiles/SCRIPTS/.sync.sh | else | edit ~/dotfiles/SCRIPTS/.sync.sh | endif
if &buftype ==# 'terminal'
  silent file ~/dotfiles/SCRIPTS/.sync.sh
endif
balt ~/dotfiles/os-MAC/apps-01-install.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 030|
lcd ~/dotfiles
wincmd w
exe 'vert 1resize ' . ((&columns * 58 + 88) / 176)
exe 'vert 2resize ' . ((&columns * 58 + 88) / 176)
exe 'vert 3resize ' . ((&columns * 58 + 88) / 176)
tabnext 3
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
