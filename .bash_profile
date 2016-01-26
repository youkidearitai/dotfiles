if [ "$(uname)" == 'Darwin']; then
    if [ -f ~/.bashrc ]; then
        source ~/.bashrc
    fi

    #if [ -f /opt/local/etc/bash_completion ]; then
    #        source /opt/local/etc/bash_completion
    #fi
    if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
        . /opt/local/etc/profile.d/bash_completion.sh
    fi

    ##
    # Your previous /Users/tekitoh/.bash_profile file was backed up as /Users/tekitoh/.bash_profile.macports-saved_2015-01-22_at_22:38:18
    ##

    # MacPorts Installer addition on 2015-01-22_at_22:38:18: adding an appropriate PATH variable for use with MacPorts.
    export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
    # Finished adapting your PATH environment variable for use with MacPorts.
fi
