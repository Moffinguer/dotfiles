from libqtile.command import lazy
from libqtile.config import Key
from libqtile.utils import guess_terminal

terminal = 'urxvt' 
mod = "mod4"

keys = [
    #MOVE SCREENS
    Key([mod], "h", lazy.layout.left(),                                                     desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(),                                                    desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(),                                                     desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(),                                                       desc="Move focus up"),
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(),                                    desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(),                                   desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(),                                    desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(),                                      desc="Move window up"),
    Key([mod], "space", lazy.layout.next(),                                                 desc="Move window focus to other window"),
    Key([mod], "n", lazy.layout.normalize(),                                                desc="Reset all window sizes"),
    #RESIZE SCREENS
    Key([mod, "control"], "h", lazy.layout.grow_left(),                                     desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(),                                    desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(),                                     desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(),                                       desc="Grow window up"),
    #SHORTCUTS
    Key([mod], "m", lazy.spawn("rofi -show run"),                                           desc="Show menu of all applications"),
    Key([mod, 'shift'], "m", lazy.spawn("rofi -show"),                                      desc="Show menu of all applications running"),
    Key([mod, "shift"], "Return", lazy.layout.toggle_split(),                               desc="Toggle between split and unsplit sides of stack"),
    Key([mod], "Return", lazy.spawn(terminal),                                              desc="Launch terminal"),
    Key([mod], "Tab", lazy.next_layout(),                                                   desc="Toggle between layouts"),
    Key([mod], "w", lazy.window.kill(),                                                     desc="Kill focused window"),
    Key([mod, "control"], "r", lazy.reload_config(),                                        desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(),                                             desc="Shutdown Qtile"),
    Key([mod], "r", lazy.spawncmd(),                                                        desc="Spawn a command using a prompt widget"),
    #VOLUME SETTINGS
    Key([], "XF86AudioLowerVolume", lazy.spawn("pactl set-sink-volume @DEFAULT_SINK@ -5%"), desc="Lower volume"),
    Key([], "XF86AudioRaiseVolume", lazy.spawn("pactl set-sink-volume @DEFAULT_SINK@ +5%"), desc="Increase volume"),
    Key([], "XF86AudioMute", lazy.spawn("pactl set-sink-mute @DEFAULT_SINK@ toggle"),       desc="Mute"),
    #BRIGHTNESS SETTINGS
    Key([], "XF86MonBrightnessUp", lazy.spawn("brightnessctl set +10%"),                    desc="Lower brightness"),
    Key([], "XF86MonBrightnessDown", lazy.spawn("brightnessctl set 10%-"),                  desc="Increase volume")
]
