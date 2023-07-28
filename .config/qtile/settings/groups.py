from libqtile.command import lazy
from libqtile.config import Group, Key

from .keys import mod, keys

groups = [Group(i) for i in ["", "", "", "", "", ""]]

for i, group in enumerate(groups):
    pressedKey = f"{i + 1}"
    keys.extend(
        [
            Key([mod], pressedKey, lazy.group[group.name].toscreen(), desc="Switch to group {}".format(group.name)),
            Key([mod, "shift"], pressedKey, lazy.window.togroup(group.name, switch_group=True), desc="Switch to & move focused window to group {}".
            format(group.name)),
        ]
    )
