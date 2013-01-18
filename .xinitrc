if [ -f $HOME/.Xmodmap ]; then
    /usr/bin/xmodmap $HOME/.Xmodmap
fi

xrdb -merge $HOME/.Xdefaults

until wmii; do
    true
done
