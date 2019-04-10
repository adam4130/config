while true 
do
  PERCENT=`acpitool | head -n 1 | grep -o -P '[0-9]*(\.[0-9]*)?(?=%)'`
  BATTERY=$(printf %.0f $PERCENT)
  xsetroot -name "${BATTERY}% | $( date +"%a %b %d %I:%M %p" )"
  sleep 10s
done &

feh --bg-scale ~/.wallpaper.jpg

exec dwm
