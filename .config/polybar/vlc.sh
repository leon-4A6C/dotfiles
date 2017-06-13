#!/bin/bash

playerctl status &> /dev/null

if [ $? == 1 ]; then
  echo ""
elif [ "$(playerctl status)" == "Playing" ]; then
  title=`exec playerctl metadata title`
  artist=`exec playerctl metadata artist`
  echo " $artist - $title"
elif [ "$(playerctl status)" == "Paused" ]; then
  title=`exec playerctl metadata title`
  artist=`exec playerctl metadata artist`
  echo " $artist - $title"
else
  echo ""
fi
