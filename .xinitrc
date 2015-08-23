#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# input method
export GTK_IM_MODULE=uim
export QT_IM_MODULE=uim
uim-xim &
export XMODIFIERS=@im=uim

while :
do
  sleep 1800
  feh -rz --bg-fill $HOME/pic &
done &

usr=`whoami`
host=`hostname | sed 's/\..*$//'`
while :
do
  rwinname="$usr@$host | $(uptime | sed 's/^ *[^ ]* *//') | battery: $(
      acpi | cut -d ',' -f 2) | $(TZ=Asia/Tokyo date)"
  xsetroot -name "`echo "$rwinname" | sed 's/  */ /g'`"
  sleep 0.3
done &

urxvt &
exec dwm
