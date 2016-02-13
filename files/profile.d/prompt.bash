# Change the window title of X terminals 
case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*|interix)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
    ;;
  screen)
    PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\033\\"'
    ;;
esac

# Color prompt
if [ "${USER}" == "root" ]; then
  PS1='\[\033[01;31m\]\h\[\033[01;34m\] \w \$\[\033[00m\] '
else
  PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
fi

# Check if i am chrooted
grep '_=/usr/bin/chroot' /proc/$$/environ >/dev/null 2>&1 &&
# Print a red Chroot!
PS1="\[\033[01;31m\]Chroot! \[\033[00m\]${PS1}"

# Check for screen terminal
[ "${TERM}" == "screen" ] &&
# Print a yellow Screen:
PS1="\[\033[01;33m\]Screen: \[\033[00m\]${PS1}"

export PS1
