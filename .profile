XDG_CONFIG_HOME="$HOME/.config/"
. ${XDG_CONFIG_HOME:-~/.config}/user-dirs.dirs
CARGO_HOME="$XDG_DATA_HOME"/cargo
CCACHE_DIR="$XDG_CACHE_HOME"/ccache
ASPELL_CONF="per-conf $XDG_CONFIG_HOME/aspell/aspell.conf; personal $XDG_CONFIG_HOME/aspell/en.pws; repl $XDG_CONFIG_HOME/aspell/en.prepl"
BG_COL='#111111'
BGSEL_COL='#393939'
BIBLIOGRAPHY="$HOME/lib/bibliography"
BROWSER=glinks
EDITOR=E
ENV="$HOME/.profile"
FG_COL='#ececec'
font=$HOME/lib/fonts/atarist/atarist-normal.font
GEM_HOME="$XDG_DATA_HOME"/gem
GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem
GNUPGHOME="$XDG_DATA_HOME"/gnupg
GOPATH=$HOME/.local/go
GOBIN=$GOPATH/bin
GPG_TTY=$(tty)
GS_FONTPATH=/usr/share/fonts
GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
HISTFILE="$XDG_DATA_HOME/zsh/history"
HISTSIZE=100000
ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
_JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
LANG='en_US.utf8'
LC_ALL=en_US.UTF-8
LESSHISTFILE=-
NNN_BMS='v:~/videos;m:~/music;u:~/university'
NNN_OPENER=plumb
OPENER=$PLUMBER
PAGER=less
PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
PATH="$HOME/bin:$HOME/bin/games:$HOME/bin/jre:$HOME/.local/bin:$GOBIN:$PATH:/usr/lib/plan9/bin"
PLAN9=/usr/lib/plan9
PLUMBER=plumb
READER=zathura
REFER=$HOME/.bibliography
SAVEHIST=$HISTSIZE
SQLITE_HISTORY=$XDG_DATA_HOME/sqlite_history
TMUX_TMPDIR="$XDG_RUNTIME_DIR"
TROFFMACS="$HOME/git/scriptsanddotfiles/tmac"
VISUAL=vis
WEECHAT_HOME="$XDG_CONFIG_HOME"/weechat
WINEDEBUG='-all'
XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
XMONAD_CONFIG_HOME="$XDG_CONFIG_HOME"/xmonad
XMONAD_DATA_HOME="$XDG_CONFIG_HOME"/xmonad/data
XMONAD_CONFIG_HOME="$XDG_CONFIG_HOME"/xmonad/cache
ZDOTDIR="$HOME/.config/sh"
SFEED_PLUMBER=plumb
SFEED_PIPER=content-sneed
SFEED_URL_FILE="$HOME/.sfeed/read"

export ASPELL_CONF BG_COL BGSEL_COL BIBLIOGRAPHY BROWSER EDITOR ENV FG_COL font GEM_HOME GEM_SPEC_CACHE GNUPGHOME GOPATH GOBIN GPG_TTY GS_FONTPATH GTK2_RC_FILES HISTFILE HISTSIZE ICEAUTHORITY _JAVA_OPTIONS LANG LC_ALL LESSHISTFILE NNN_BMS NNN_OPENER OPENER PAGER PASSWORD_STORE_DIR PATH PLAN9 PLUMBER READER REFER SAVEHIST SQLITE_HISTORY TMUX_TMPDIR TROFFMACS VISUAL WEECHAT_HOME WINEDEBUG XAUTHORITY XINITRC XSERVERRC ZDOTDIR XDG_CONFIG_HOME CARGO_HOME CCACHE_DIR SFEED_PLUMBER SFEED_PIPER SFEED_URL_FILE

pidof gpg-agent >/dev/null || gpg-agent --daemon --enable-ssh-support > ~/.config/sh/zsh-ssh

if ! { ps -e | grep X > /dev/null; } && [  "$(tty)" = "/dev/tty1" ] ; then
	trap '' INT
	fortune $HOME/lib/q
	sleep 5
	trap - INT
#    exec startxfce4
	exec startx $XINITRC --
fi
#if [ -e /home/lich/.nix-profile/etc/profile.d/nix.sh ]; then . /home/lich/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
