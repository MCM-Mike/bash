# .bashrc


# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# source some files
[ -f ~/.bash_functions ] && source $HOME/.bash_functions
[ -f ~/.bash_exports ] && source $HOME/.bash_exports
[ -f ~/.bash_alias ] && source $HOME/.bash_alias
[ -f ~/.bash_alias ] && source $HOME/.bash_color
#[ -f ~/.bash_promt ] && source $HOME/.bash_promt

# advanced bash-completion
[ -f /etc/bash_completion ] && source /etc/bash_completion


# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# Colors
if [ -f ~/.dir_colors ]; then
        eval 'dircolors ~/.dircolors'
fi

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi



# Comment in the above and uncomment this below for a color prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac


