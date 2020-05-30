#!/bin/sh

if [ "$1" = "br" ]; then
  echo "Modo: teclado ABNT-2..."
  setxkbmap -model abnt2 -layout br -variant abnt2
  xmodmap ~/.Xmodmap
elif [ "$1" = "us" ]; then
  echo "Modo: teclado US Internacional..."
  setxkbmap -model pc105 -layout us -variant intl
  xmodmap ~/.Xmodmap
elif [ "$1" = "ru" ]; then
  setxkbmap -model pc104 -layout ru
  xmodmap ~/.Xmodmap
elif [ "$1" = "rufo" ]; then
  setxkbmap -model pc104 -layout ru -variant phonetic
  xmodmap ~/.Xmodmap
elif [ "$1" = "usnoint" ]; then
  echo "Modo: teclado US..."
  setxkbmap -model pc105 -layout us
  xmodmap ~/.Xmodmap
elif [ "$1" = "" ]; then
  XLAYOUT=`cat /etc/X11/xorg.conf.d/00-keyboard.conf | grep XkbLayout | awk -F' ' '{ print $3 }' | tr -d "\""`
  if [ "$XLAYOUT" = "br" ]; then
    echo "Modo: teclado ABNT-2..."
    setxkbmap -model abnt2 -layout br -variant abnt2
    xmodmap ~/.Xmodmap
  elif [ "$XLAYOUT" = "us_intl" ]; then
    echo "Modo: teclado US Internacional..."
    setxkbmap -model pc105 -layout us -variant intl
    xmodmap ~/.Xmodmap
  fi
fi
