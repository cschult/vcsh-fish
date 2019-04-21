set fish_greeting
set PATH $PATH $HOME/.local/bin
set -x LC_MESSAGES en_US.UTF-8
set -x EDITOR nvim
set -x VISUAL nvim
set -x PAGER less
set -x LESS -R -M -i
set -x CDR_DEVICE /dev/cdrom
set -x GPGKEY E3FEEFF0
set -x PRINTER GraustufenNormalDuplex
set -x TMUX_TMPDIR $XDG_RUNTIME_DIR
set -x LYNX_CFG $HOME/.config/lynx/config
set -x TIGRC_USER $HOME/.config/tig/tigrc
set -x ELINKS_CONFDIR $HOME/.config/elinks
set -x VISUAL nvim
set -x GTK2_RC_FILES $HOME/.config/gtk-2.0/gtkrc
set -x GTK_RC_FILES $HOME/.config/gtk-1.0/gtkrc
set -x GIMP2_DIRECTORY $HOME/.config/gimp
set -x MPLAYER_HOME $HOME/.config/mplayer
set -x RECOLL_CONFDIR $HOME/.config/recoll
set -x CARGO_HOME $HOME/.local/share/cargo
set -x XINITRC $HOME/.config/X11/xinitrc
set -x GOOGLE_DRIVE_SETTINGS $HOME/.duplicity/credentials
# ALT+- copy word from left of cursor to right of cursor
bind \e- beginning-of-line forward-word kill-line yank yank
if status --is-interactive
    abbr -a -g au arch-update
    abbr -a -g c cat
    abbr -a -g dfh 'df -h'
    abbr -a -g e echo
    abbr -a -g gaa 'git add --all'
    abbr -a -g ga 'git add'
    abbr -a -g gap 'git add --patch'
    abbr -a -g gba 'git --no-pager branch --all -vv'
    abbr -a -g gb 'git --no-pager branch -vv'
    abbr -a -g gca 'git commit -v -a'
    abbr -a -g gca! 'git commit -v -a --amend'
    abbr -a -g gcam 'git commit --all -m'
    abbr -a -g gcb 'git checkout -b'
    abbr -a -g gc 'git commit -v'
    abbr -a -g gc! 'git commit -v --amend'
    abbr -a -g gcl 'git clone'
    abbr -a -g gcm 'git commit -m'
    abbr -a -g gco 'git checkout'
    abbr -a -g gcom 'git checkout master'
    abbr -a -g gcot 'git checkout testing'
    abbr -a -g gcp 'git cherry-pick'
    abbr -a -g gdca 'git diff --cached'
    abbr -a -g gd 'git diff'
    abbr -a -g g git
    abbr -a -g gl 'git log'
    abbr -a -g glog 'git log --oneline --decorate --color --graph'
    abbr -a -g glo 'git log --oneline --decorate --color'
    abbr -a -g gloo 'git log --pretty=format:"%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s" --date=short'
    abbr -a -g gm 'git merge'
    abbr -a -g gpl 'git pull'
    abbr -a -g gpu 'git push'
    abbr -a -g gr 'git remote -vv'
    abbr -a -g grs 'git remote -vv show'
    abbr -a -g grso 'git remote show origin'
    abbr -a -g gsh 'git show'
    abbr -a -g gshort 'git --no-pager shortlog'
    abbr -a -g gss 'git status -s'
    abbr -a -g gst 'git status'
    abbr -a -g jc journalctl
    abbr -a -g j jrnl
    abbr -a -g la 'ls -vA'
    abbr -a -g lg 'ls -lag'
    abbr -a -g lh 'ls -lh'
    abbr -a -g ll 'ls -al'
    abbr -a -g l 'ls -l'
    abbr -a -g l. 'ls -ld .*'
    abbr -a -g md mkdir
    abbr -a -g o less
    abbr -a -g psg 'pgrep -a'
    abbr -a -g pwrof 'systemctl poweroff -i'
    abbr -a -g px 'ps aux'
    abbr -a -g pxw 'ps auxwww'
    abbr -a -g sc systemctl
    abbr -a -g sv 'sudo -E nvim'
    abbr -a -g vd 'nvim -d'
    abbr -a -g v nvim
    abbr -a -g xo xdg-open
    abbr -a -g ydl youtube-dl
end

