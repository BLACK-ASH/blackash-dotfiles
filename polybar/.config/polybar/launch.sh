if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    killall polybar
    MONITOR=$m polybar --reload topbar &
  done
else
  killall polybar
  polybar --reload topbar &
fi
