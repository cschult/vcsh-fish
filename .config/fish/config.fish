# config.fish
#
# git: fish.git (vcsh)
#
# (C) Christian Schult <cschult@devmem.de>
#
#
# setup
# =====
[ -f /etc/os-release ]
  and set -l _os_release (awk -F'=' '/^ID=/ {print $NF}' /etc/os-release)

# fish vars
# =========
set fish_greeting
set fish_prompt_pwd_dir_length 3
[ -d $HOME/.local/bin ]
  and set PATH $PATH $HOME/.local/bin
set -x RECOLL_CONFDIR $HOME/.config/recoll

# program vars
# ============
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
set -x GTK2_RC_FILES $HOME/.config/gtk-2.0/gtkrc
set -x GTK_RC_FILES $HOME/.config/gtk-1.0/gtkrc
set -x GIMP2_DIRECTORY $HOME/.config/gimp
set -x MPLAYER_HOME $HOME/.config/mplayer
set -x RECOLL_CONFDIR $HOME/.config/recoll
set -x CARGO_HOME $HOME/.local/share/cargo
set -x XINITRC $HOME/.config/X11/xinitrc
set -x GOOGLE_DRIVE_SETTINGS $HOME/.duplicity/credentials

# oh-my-fish theme vars
# =====================

# abbreviations
# =============
# ALT+- copy word from left of cursor to right of cursor
bind \e- beginning-of-line forward-word kill-line yank yank
if status --is-interactive
    set -g fish_user_abbreviations
    abbr -a c cat
    abbr -a dfh 'df -h'
    abbr -a e echo
    abbr -a gaa 'git add --all'
    abbr -a ga 'git add'
    abbr -a gap 'git add --patch'
    abbr -a gba 'git --no-pager branch --all -vv'
    abbr -a gb 'git --no-pager branch -vv'
    abbr -a gca 'git commit -v -a'
    abbr -a gca! 'git commit -v -a --amend'
    abbr -a gcam 'git commit --all -m'
    abbr -a gcb 'git checkout -b'
    abbr -a gc 'git commit -v'
    abbr -a gc! 'git commit -v --amend'
    abbr -a gcl 'git clone'
    abbr -a gcm 'git commit -m'
    abbr -a gco 'git checkout'
    abbr -a gcom 'git checkout master'
    abbr -a gcot 'git checkout testing'
    abbr -a gcp 'git cherry-pick'
    abbr -a gdca 'git diff --cached'
    abbr -a gd 'git diff'
    abbr -a g git
    abbr -a gl 'git log --name-status'
    abbr -a glog 'git log --oneline --decorate --color --graph'
    abbr -a glo 'git log --oneline --decorate --color'
    abbr -a gloo 'git log --pretty=format:"%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s" --date=short'
    abbr -a gls 'git ls-files'
    abbr -a gm 'git merge'
    abbr -a gpl 'git pull'
    abbr -a gpu 'git push'
    abbr -a gpugh 'git push github'
    abbr -a gr 'git remote -vv'
    abbr -a grs 'git remote -vv show'
    abbr -a grso 'git remote show origin'
    abbr -a gsh 'git show'
    abbr -a gshort 'git --no-pager shortlog'
    abbr -a gss 'git status -s'
    abbr -a gst 'git status'
    abbr -a jc journalctl
    abbr -a j jrnl
    abbr -a ju jump
    abbr -a la 'ls -vA'
    abbr -a lg 'ls -lag'
    abbr -a lh 'ls -lh'
    abbr -a ll 'ls -al'
    abbr -a l 'ls -l'
    abbr -a l. 'ls -ld .*'
    abbr -a md mkdir
    abbr -a o less
    abbr -a psg 'pgrep -a'
    abbr -a pwrof 'systemctl poweroff -i'
    abbr -a px 'ps aux'
    abbr -a pxw 'ps auxwww'
    abbr -a sc systemctl
    abbr -a sv 'sudo -E nvim'
    abbr -a v nvim
    abbr -a vcst 'vcsh status'
    abbr -a vd 'nvim -d'
    abbr -a xo xdg-open
    abbr -a ydl youtube-dl
    if set -q _os_release
        switch $_os_release
          case "ubuntu"
            abbr -a apti 'apt install'
            abbr -a auf 'sudo apt update && sudo apt full-upgrade'
          case "arch"
            abbr -a au 'arch-update'
            abbr -a pSs 'pacman --color=auto -Ss'
            abbr -a pSyu 'sudo pacman --color=auto -Syu'
            abbr -a pRns 'sudo pacman --color=auto -Rns'
        end
    end
end

