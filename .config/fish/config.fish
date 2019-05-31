# config.fish
#
# git: fish.git (vcsh)
#
# (C) Christian Schult <cschult@devmem.de>
#
#

# fish vars
# =========
set fish_greeting
set fish_prompt_pwd_dir_length 3

# path
# ====
[ -d $HOME/.local/bin ] && set PATH $PATH $HOME/.local/bin

set -x LC_MESSAGES en_US.UTF-8
set -x EDITOR nvim
set -x VISUAL nvim
set -x PAGER less
set -x LESS -R -M -i -F -X

# abbreviations
# =============
if status --is-interactive

end

# key bindings
# ============
# ALT+- copy word from left of cursor to right of cursor
bind \e- beginning-of-line forward-word kill-line yank yank

if [ -f /etc/os-release ]
    set -l __xyz (while read -la line; string match -e -r '^ID=' $line; end < /etc/os-release)
    set _distribution (string replace -r '^ID=' '' $__xyz)
end

# program vars
# ============
set -x LESSOPEN '|/usr/bin/lesspipe.sh %s'
set -x TMUX_TMPDIR $XDG_RUNTIME_DIR
set -x LYNX_CFG $HOME/.config/lynx/config
set -x TIGRC_USER $HOME/.config/tig/tigrc
set -x ELINKS_CONFDIR $HOME/.config/elinks
if [ $hostname = 'jazz' ]
    set -x CDR_DEVICE /dev/cdrom
    set -x GPGKEY E3FEEFF0
    set -x PRINTER GraustufenNormalDuplex
    set -x GTK2_RC_FILES $HOME/.config/gtk-2.0/gtkrc
    set -x GTK_RC_FILES $HOME/.config/gtk-1.0/gtkrc
    set -x GIMP2_DIRECTORY $HOME/.config/gimp
    set -x MPLAYER_HOME $HOME/.config/mplayer
    set -x RECOLL_CONFDIR $HOME/.config/recoll
    set -x CARGO_HOME $HOME/.local/share/cargo
    set -x XINITRC $HOME/.config/X11/xinitrc
    # set -x GOOGLE_DRIVE_SETTINGS $HOME/.duplicity/credentials
end

# user abbreviations
# ==================
if status --is-interactive
    set -g fish_user_abbreviations
    abbr -a c cat
    abbr -a dfh 'df -h'
    abbr -a e echo
    abbr -a f functions
    abbr -a jc journalctl
    abbr -a la 'ls -vA'
    abbr -a lg 'ls -lag'
    abbr -a lh 'ls -lh'
    abbr -a ll 'ls -al'
    abbr -a l 'ls -l'
    abbr -a l. 'ls -ld .*'
    abbr -a md mkdir
    abbr -a o less
    abbr -a psg 'pgrep -a'
    abbr -a px 'ps aux'
    abbr -a pxw 'ps auxwww'
    abbr -a sc systemctl
    abbr -a v nvim
    abbr -a vd 'nvim -d'
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
    abbr -a sv 'sudo -E nvim'

    # abbreviations for distributions
    # ===============================
    if set -q _distribution
        switch $_distribution
            case "ubuntu"
                abbr -a acs 'apt-cache search'
                abbr -a acsh 'apt-cache show'
                abbr -a acp 'apt-cache policy'
                abbr -a aptu 'sudo apt update'
                abbr -a apti 'sudo apt install'
                abbr -a aptp 'sudo apt purge'
                abbr -a auf 'sudo apt update && sudo apt full-upgrade'
                abbr -a aptrm 'sudo apt remove'
                abbr -a aptau 'sudo apt autoremove'
                abbr -a pwrof 'systemctl poweroff -i'
                abbr -a j jrnl
                abbr -a ydl youtube-dl
                abbr -a xo xdg-open
                abbr -a vcst 'vcsh status'
            case "arch"
                abbr -a pwrof 'systemctl poweroff -i'
                abbr -a au 'arch-update'
                abbr -a pS 'sudo pacman -S'
                abbr -a pSs 'pacman -Ss'
                abbr -a pSyu 'sudo pacman -Syu'
                abbr -a pRns 'sudo pacman -Rns'
                abbr -a pQs 'pacman -Qs'
                abbr -a vcst 'vcsh status'
                abbr -a xo xdg-open
                abbr -a ydl youtube-dl
            case "debian"
                abbr -a acs 'apt-cache search'
                abbr -a acsh 'apt-cache show'
                abbr -a acp 'apt-cache policy'
                abbr -a aptu 'sudo apt update'
                abbr -a apti 'sudo apt install'
                abbr -a aptp 'sudo apt purge'
                abbr -a auf 'sudo apt update && sudo apt full-upgrade'
                abbr -a aptrm 'sudo apt remove'
                abbr -a aptau 'sudo apt autoremove'
                abbr -a vcst 'vcsh status'
        end # switch
    end # if set -q _distribution
end # status --is-interactive

