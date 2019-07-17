#!/bin/sh
function launch {

if [ -b /dev/disk/by-label/ALSTOM ]; then
	udisksctl power-off -b /dev/disk/by-label/ALSTOM
fi

if pgrep -x "osmo" > /dev/null
then
	killall osmo
else
	osmo &
fi

if pgrep -x "pasystray" > /dev/null
then
	killall pasystray
else
	pasystray &
fi

if pgrep -x "guake" > /dev/null
then
	guake --quit &
else
	guake &
fi

if pgrep -x "nm-applet" > /dev/null
then
	killall nm-applet
else
	nm-applet &
fi

if pgrep -x "blueberry-tray" > /dev/null
then
	killall blueberry-tray
else
	blueberry-tray &
fi

if pgrep -x "parcellite" > /dev/null
then
	killall parcellite
else
	parcellite &
fi

if pgrep -x "cellwriter" > /dev/null
then
	killall cellwriter
else
	cellwriter &
fi

if pgrep -x "hp-systray" > /dev/null
then
	killall hp-systray
else
	hp-systray -x &
fi

# apresentando comportamento inadequado para controle do brilho no ThinkPad X200 com Leap 15.1
#if pgrep -x "xfce4-power-manager" > /dev/null
#then
#	killall xfce4-power-manager
#else
#	xfce4-power-manager &
#fi

if pgrep -x "esets_gui" > /dev/null
then
	killall esets_gui
else
	/opt/eset/esets/bin/esets_gui --autostart &
fi

if pgrep -x "qsynergy" > /dev/null
then
	killall qsynergy
else
	qsynergy &
fi

if pgrep -x "dropbox" > /dev/null
then
	dropbox stop
#else
#	dropbox start &
fi
#

FvwmCommand Refresh

}

launch
