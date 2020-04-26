#!/bin/bash
# Buscador de janelas utilizado pela minha configuração do FVWM
#
# Colaborou Phantom X
#
random=`awk -v min=100009 -v max=999999 'BEGIN{srand(); print int(min+rand()*(max-min+1))}'`
wmctrl -l | cat -n > /tmp/${random}_fvwm_window_list.txt
selection=`cat /tmp/${random}_fvwm_window_list.txt | fzf -e`
id=`echo $selection | cut -f 1 -d " "`
window_name=`wmctrl -l 2> /dev/null | grep $id | sed 's/  /_/g;s/ /_/g' | cut -d_ -f4,4- | sed 's/_/ /g'`
wmctrl -a ${window_name}

trap cleanup EXIT
cleanup() {
  set +e
  [ -w /tmp/${random}_fvwm_window_list.txt ] && rm -f /tmp/${random}_fvwm_window_list.txt
}
