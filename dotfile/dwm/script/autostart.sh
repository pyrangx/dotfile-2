#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}

~/dwm/script/statusbar.sh &
run "fcitx"
run "/usr/lib/xfce4/notifyd/xfce4-notifyd"
run "volumeicon"
