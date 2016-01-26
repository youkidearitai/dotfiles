if [ "$(uname)" == 'Darwin']; then # Mac
    export PATH="/opt/local/bin:/opt/local/sbin:$HOME/bin:$PATH"
    export MANPATH="/opt/local/share/man:$MANPATH"
    alias ls='ls -G'
    alias rm=rmtrash
fi
