#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z $DISPLAY ] && [ "$XDG_VTNR" -le 3 ]; then
  if uwsm check may-start; then
    exec uwsm start -S hyprland.desktop
  fi
fi
