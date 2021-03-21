#~/.xinitrc

# xrandr settings
xrandr --output DisplayPort-1 --primary --auto --output HDMI-A-1 --left-of DisplayPort-1 --auto

# cursor settings
xrdb ~/.Xresources

# compositor
picom &

exec qtile start

