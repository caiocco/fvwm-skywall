#!/bin/bash
# Buscador de janelas utilizado pela minha configuração do FVWM
#
# Colaborou Phantom X
#
host=`hostname`
random=`awk -v min=100009 -v max=999999 'BEGIN{srand(); print int(min+rand()*(max-min+1))}'`
wmctrl -l | grep -v "Localizador de Janelas" | sed 's/            N\/A/'$host'/g' | cat -n > /tmp/${random}_fvwm_window_list.txt
selection=`cat /tmp/${random}_fvwm_window_list.txt | fzf -e`
id=`echo $selection | cut -f 2 -d " "`
# Não é necessário filtrar pelo nome a partir do ID, é mais eficiente usar o ID diretamente, comentando código abaixo...
#window_name=`wmctrl -l 2> /dev/null | grep $id | sed 's/  /_/g;s/ /_/g' | cut -d_ -f4,4- | sed 's/_/ /g'`
#window_name_fix=`echo $window_name | sed 's/^N\/A //g'`
#wmctrl -a ${window_name_fix}
wmctrl -i -a $id

trap cleanup EXIT
cleanup() {
  set +e
  [ -w /tmp/${random}_fvwm_window_list.txt ] && rm -f /tmp/${random}_fvwm_window_list.txt
}
