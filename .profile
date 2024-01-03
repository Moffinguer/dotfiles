#!/bin/sh
# export QT_STYLE_OVERRIDE=kvantum

# Enviroment variables for all session
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XTERM='urxvt'

export XDG_DESKTOP_DIR="$HOME/Desktop" && [ -d "$XDG_DESKTOP_DIR" ] || mkdir "$XDG_DESKTOP_DIR"
export XDG_DOCUMENTS_DIR="$HOME/Documents" && [ -d "$XDG_DOCUMENTS_DIR" ] || mkdir "$XDG_DOCUMENTS_DIR"
export XDG_DOWNLOAD_DIR="$HOME/Downloads" && [ -d "$XDG_DOWNLOAD_DIR" ] || mkdir "$XDG_DOWNLOAD_DIR"
export XDG_MUSIC_DIR="$HOME/Music" && [ -d "$XDG_MUSIC_DIR" ] || mkdir "$XDG_MUSIC_DIR"
export XDG_PICTURES_DIR="$HOME/Pictures" && [ -d "$XDG_PICTURES_DIR" ] || mkdir "$XDG_PICTURES_DIR"
export XDG_PUBLICSHARE_DIR="$HOME/Public" && [ -d "$XDG_PUBLICSHARE_DIR" ] || mkdir "$XDG_PUBLICSHARE_DIR"
export XDG_TEMPLATES_DIR="$HOME/Templates" && [ -d "$XDG_TEMPLATES_DIR" ] || mkdir "$XDG_TEMPLATES_DIR"
export XDG_VIDEOS_DIR="$HOME/Videos" && [ -d "$XDG_VIDEOS_DIR" ] || mkdir "$XDG_VIDEOS_DIR"
export XDG_TRASH_DIR="$HOME/Trash" && [ -d "$XDG_TRASH_DIR" ] || mkdir "$XDG_TRASH_DIR"

case "$SHELL" in
	*zsh)
		if [[ ! -d "$XDG_DATA_HOME/zsh" ]] then
			mkdir "$XDG_DATA_HOME/zsh"
		fi
		if [[ ! -e "$XDG_DATA_HOME/zsh/.zhistory" ]] then
			touch "$XDG_DATA_HOME/zsh/.zhistory"
		fi
		export HISTFILE="$XDG_DATA_HOME"/zsh/.zhistory
		export HISTSIZE=1000000
		export SAVEHIST=1000000
		export ZDOTDIR=$HOME/.config/zsh
		;;
esac

## Java
if [ -d /usr/lib/jvm ] && [ "$(ls /usr/lib/jvm)" ]; then
	export JAVA_HOME="/usr/lib/jvm/jdk-20.0.1" && export PATH="$PATH:$JAVA_HOME/bin"
fi

## Perl
which perlcritic >> /dev/null && [ -e "$HOME/.perlcriticrc" ] && export PERLCRITIC="$HOME/.perlcriticrc"
which perltidy >> /dev/null   && [ -e "$HOME/.perltidyrc" ]   && export PERLTIDY="$HOME/.perltidyrc"

## Colorize command output
which bat >> /dev/null && export BAT_THEME="Monokai Extended Origin"
export LESS='-R --use-color -Dd+r$Du+b$'
if which man >> /dev/null; then
	export MANPAGER="sh -c 'col -bx | bat -l man -p'"
	export MANROFFOPT="-c"
fi

export PATH="$HOME/.local/bin:$PATH"
