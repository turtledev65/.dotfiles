export ZDOTDIR="$HOME/.config/zsh"

if [[ "$(tty)" == "/dev/tty1" ]]; then
  startx $HOME/.config/X11/xinitrc
fi

