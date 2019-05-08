# (C) Christian Schult 2019

# todo: show last status if error
# show if git has stashed somthing

set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)
set grey '5f5f5f'
set blue '005fff'

set __fish_git_prompt_show_informative_status 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# set __fish_git_prompt_showcolorhints 'yes'
set __fish_git_prompt_showupstream 'verbose'
set __fish_git_prompt_char_stateseparator '|'
set __fish_git_prompt_char_invalidstate '✖'
# set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_dirtystate '✚'
# set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stagedstate '●'
# set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_untrackedfiles '…'
set __fish_git_prompt_char_stashstate '↩'
# set __fish_git_prompt_char_stashstate '⚑'
# set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_ahead '↑'
# set __fish_git_prompt_char_upstream_behind '-'
set __fish_git_prompt_char_upstream_behind '↓'
set __fish_git_prompt_char_cleanstate '✔'


set __prompt_hostname (prompt_hostname)

function fish_prompt
  set last_status $status

  set_color $grey
  printf '%s' (whoami)@$__prompt_hostname' '
  # set_color $fish_color_cwd
  set_color $blue
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_git_prompt)

  set_color $blue
  # printf '%s' '
  # - > '
  printf '\n\UE0B1 '
  set_color normal
end

