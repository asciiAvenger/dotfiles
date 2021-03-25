from typing import List

from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

mod = "mod4"
terminal = "alacritty"

keys = [
    # monadtall key bindings
    Key([mod], "h", lazy.layout.left()),
    Key([mod], "l", lazy.layout.right()),
    Key([mod], "j", lazy.layout.down()),
    Key([mod], "k", lazy.layout.up()),
    Key([mod, "shift"], "h", lazy.layout.swap_left()),
    Key([mod, "shift"], "l", lazy.layout.swap_right()),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down()),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up()),
    Key([mod], "i", lazy.layout.grow()),
    Key([mod], "m", lazy.layout.shrink()),
    Key([mod], "n", lazy.layout.reset()),
    Key([mod], "o", lazy.layout.maximize()),
    Key([mod, "shift"], "space", lazy.layout.flip()),

    # screen locking
    Key([mod, "control"], "l", lazy.spawn("light-locker-command --lock")),

    # volume controls (pamixer)
    Key([], "XF86AudioRaiseVolume", lazy.spawn("pamixer -i 2")),
    Key([], "XF86AudioLowerVolume", lazy.spawn("pamixer -d 2")),
    Key([], "XF86AudioMute", lazy.spawn("pamixer -t")),
    Key([mod], "p", lazy.spawn("pavucontrol")),

    # rofi bindings (drun, run, emoji, ssh, window switcher)
    Key([mod], "space", lazy.spawn("rofi -show drun -theme arthur")),
    Key([mod, "control"], "space", lazy.spawn("rofi -show run -theme arthur")),
    Key([mod], "e", lazy.spawn("rofi -show emoji -modi emoji -theme arthur")),
    Key([mod], "s", lazy.spawn("rofi -show ssh -theme arthur")),
    Key([mod], "t", lazy.spawn("rofi -show window -theme arthur")),

    # toggle floating
    Key([mod], "f", lazy.window.toggle_floating()),

    # launch terminal
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),

    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),

    Key([mod, "control"], "r", lazy.restart(), desc="Restart Qtile"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key([mod], "r", lazy.spawncmd(),
        desc="Spawn a command using a prompt widget"),
]

groups = [Group(i) for i in "123456789"]

for i in groups:
    keys.extend([
        # switch to group
        Key([mod], i.name, lazy.group[i.name].toscreen(),
            desc="Switch to group {}".format(i.name)),

        # move focused window to group
        Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
            desc="move focused window to group {}".format(i.name)),
    ])

layouts = [
    # layout.Columns(border_focus_stack='#d75f5f'),
    # layout.Max(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    layout.MonadTall(margin=8, single_margin=8),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

widget_defaults = dict(
    font='sans',
    fontsize=16,
    padding=4,
)
extension_defaults = widget_defaults.copy()

colors = [
    "#4e4e4e", # background
    "#7d8cc4", # foreground
    "a0d2db"   # accent
]

separator_config = dict(

)

bar_widgets = [
    widget.Spacer(
        length=6
    ),
    widget.CurrentLayoutIcon(
        padding=3,
        scale=0.75
    ),
    widget.GroupBox(
        foreground=colors[1],
        highlight_color=colors[2],
        active=colors[2],
        inactive=colors[1],
        hide_unused=True
    ),
    widget.Prompt(),
    widget.WindowName(),
    widget.Systray(),
    widget.Sep(
        foreground=colors[2],
        linewidth=2,
        padding=15,
        size_percent=75
    ),
    widget.CPU(),
    widget.Sep(
        foreground=colors[2],
        linewidth=2,
        padding=15,
        size_percent=75
    ),
    widget.Memory(),
    widget.Sep(
        foreground=colors[2],
        linewidth=2,
        padding=15,
        size_percent=75
    ),
    widget.Clock(
        format='%d-%m-%Y %a %H:%M'
    ),
    widget.Spacer(
        length=6
    )
]

screens = [
    Screen(
        top=bar.Bar(
            bar_widgets,
            28,
            background=colors[0]
        )
    ),
    Screen()
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
main = None  # WARNING: this is deprecated and will be removed soon
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    *layout.Floating.default_float_rules,
    Match(wm_class='confirmreset'),  # gitk
    Match(wm_class='makebranch'),  # gitk
    Match(wm_class='maketag'),  # gitk
    Match(wm_class='ssh-askpass'),  # ssh-askpass
    Match(title='branchdialog'),  # gitk
    Match(title='pinentry'),  # GPG key password entry
])
auto_fullscreen = True
focus_on_window_activation = "smart"

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
