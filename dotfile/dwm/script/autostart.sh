#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}

~/dwm/script/statusbar.sh &
xmodmap ~/.xmodmap &
run "fcitx"
run "xfce4-power-manager"
run "/usr/lib/xfce4/notifyd/xfce4-notifyd"
run "volumeicon"
rrn "lock & sleep 1 & sudo pm-suspend &"
