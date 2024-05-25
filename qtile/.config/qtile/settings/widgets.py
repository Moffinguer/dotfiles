from libqtile import widget
from .theme import colors


# Get the icons at https://www.nerdfonts.com/cheat-sheet (you need a Nerd Font)

def back(fg='text', bg='dark'):
    return {
        'foreground': colors[fg],
        'background': colors[bg]
    }


def separator():
    return widget.Sep(**back(), linewidth=0, padding=5)


def icon(fg='text', bg='dark', fontsize=20, text="?"):
    return widget.TextBox(
        **back(fg, bg),
        fontsize=fontsize,
        text=text,
        padding=3
    )


def powerline(fg="light", bg="dark"):
    return widget.TextBox(
        **back(fg, bg),
        text="",  # Icon: nf-oct-triangle_left
        fontsize=37,
        padding=-2.1
    )


def workspaces():
    return [
        separator(),
        widget.GroupBox(
            **back(fg='light'),
            fontsize=14,
            margin_y=3,
            margin_x=4,
            padding_y=8,
            padding_x=8,
            borderwidth=1,
            active=colors['active'],
            inactive=colors['inactive'],
            rounded=False,
            highlight_method='block',
            urgent_alert_method='block',
            urgent_border=colors['urgent'],
            this_current_screen_border=colors['focus'],
            this_screen_border=colors['grey'],
            other_current_screen_border=colors['dark'],
            other_screen_border=colors['dark'],
            disable_drag=True
        ),
        separator(),
        widget.WindowName(**back(fg='focus'), fontsize=14, padding=5),
        separator(),
    ]


primary_widgets = [
    *workspaces(),

    separator(),
    powerline(fg='color3'),
    icon(bg="color3", text=' '),  # Icon: nf-fae-chipnf-fae-chip

    widget.CPU(
        background=colors['color3'],
        foreground='222222',
        update_interval=1.5,
        format='{load_percent}% '
    ),
    powerline('color2', 'color3'),
    icon(bg="color2", text=' '),  # Icon: nf-mdi-memory

    widget.Memory(
        background=colors['color2'],
        foreground='222222',
        measure_mem='G',
        format='{MemUsed:.0f}{mm}/{MemTotal:.0f}{mm} ',
        update_interval=2.0,
    ),

    powerline('color3', 'color2'),

    widget.CurrentLayoutIcon(**back(bg='color3'), scale=0.65),

    widget.CurrentLayout(**back(bg='color3'), padding=5),
    powerline('color2', 'color3'),
    widget.Net(
        foreground='222222',
        background= colors["color2"],
        interface="wlp3s0",
        format="  {interface}:{down}↓↑{up}"
    ),
    powerline('color1', 'color2'),
    icon(bg="color1", fontsize=17, text=' '),  # Icon: nf-mdi-calendar_clock

    widget.Clock(**back(bg='color1'), format='%Y-%m-%d %H:%M:%S '),

    powerline('dark', 'color1'),
    widget.Systray(background=colors['dark'], padding=5),
]

secondary_widgets = [
    *workspaces(),

    separator(),

    powerline('color2', 'dark'),

    widget.CurrentLayoutIcon(**back(bg='color2'), scale=0.65),

    widget.CurrentLayout(**back(bg='color2'), padding=5),

    powerline('color1', 'color2'),

    icon(bg="color1", fontsize=17, text=' '),  # Icon: nf-mdi-calendar_clock
    powerline('dark', 'color2'),
]
widget_defaults = {
    'font': 'UbuntuMono Nerd Font Bold',
    'fontsize': 14,
    'padding': 1,
}

extension_defaults = widget_defaults.copy()
