#~/.xinitrc

# xrandr settings
xrandr --output DP-2 --primary --auto --output HDMI-2 --left-of DP-2 --auto

# cursor settings
xrdb /home/philipp/.Xresources

# compositor
picom &

exec qtile start

