#!/bin/bash

WM_DESKTOP=$(xdotool getwindowfocus)

if [ $WM_DESKTOP == "480" ]; then

	echo "%{F#89b4fa}  No Window  "

elif [ $WM_DESKTOP != "1883" ]; then

	WM_CLASS=$(xprop -id $(xdotool getactivewindow) WM_CLASS | awk 'NF {print $NF}' | sed 's/"/ /g')
	WM_NAME=$(xprop -id $(xdotool getactivewindow) WM_NAME | cut -d '=' -f 2 | awk -F\" '{ print $2 }')

	if [ $WM_CLASS == "Brave-browser" ]; then

		echo "%{F#89b4fa}  Brave  %{u-}"
	
	#elif [ $WM_NAME == "YouTube - Brave" ]; then

	#	echo "%{F#ffffff}Brave%{u-}"

	else

		echo "%{F#89b4fa}  $WM_NAME  %{u-}"

	fi

fi
