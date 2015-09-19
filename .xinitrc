#!/bin/sh
#
# .xinitrc

export GTK_IM_MODULE=ibus
export QT_IM_MODULE=xim
export XMODIFIERS=@im=ibus
/usr/local/bin/mozc start
ibus-daemon -r --daemonize --xim

#vidcontrol -S off
xset b off

while :
do
  xsetroot -name "`
      whoami
    `@`
      hostname -s
    ` | `
      uptime | grep -o 'load.*'
    ` | battery: `
      acpiconf -i 0 | grep 'Remaining capacity:' \
      | grep -o '[^[:blank:]]*$'
    ``
      if [ -z $(acpiconf -i 0 | grep 'State:' | grep -o discharging) ]
      then
        echo ', charging'
      fi
    ` | `
      TZ=Asia/Tokyo date | sed 's/  */ /g'
    `"
  sleep 0.3
done &

while :
do
  feh -zr --bg-fill $HOME/pic
  sleep 1800 # xdm sets up the first wallpaper when you log in
done &

urxvt &
exec dwm
