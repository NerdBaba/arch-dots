# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/material"





if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload -q main -c "$DIR"/config.ini &
  done
else
  polybar --reload -q main -c "$DIR"/config.ini &
fi
