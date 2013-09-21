if [ -f $HOME/.Xmodmap ]; then
    /usr/bin/xmodmap $HOME/.Xmodmap
fi

synclient TouchpadOff=1
xrdb -merge $HOME/.Xdefaults

exec i3
