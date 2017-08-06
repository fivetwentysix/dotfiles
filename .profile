# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export GGCRYPTO_URL="https://ggcrypto.com/"
export GGCRYPTO_REDIRECT_URL="https://ggcrypto.com/auth/"
export GGCRYPTO_BACKEND_LISTEN=3001
export EDITOR=vim

alias gst='git status'
alias gp='git push'
alias gb='git branch'
alias glg='git log'
alias gc='git commit'
alias gco='git checkout'
alias ga='git add'
alias gl='git pull'
alias gm='git merge'
alias gd='git diff'

set -o vi
