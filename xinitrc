#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
  for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

systemctl --user import-environment DISPLAY &
clipmenud &
dunst &
slstatus &
xrandr --output DP-4 --mode 3440x1440 --rate 144 &
feh --bg-fill ~/Pictures/Wallpapers/Warhammer/WarhammerTechPriest_upscayl_3440px_ultrasharp.png &
picom --config ~/.config/picom/picom.conf &
flameshot &
numlockx &
exec dwm
