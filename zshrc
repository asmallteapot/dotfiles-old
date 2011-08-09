# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME='serenity'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

# detect if a command exists
command_exists () {
    type "$1" &> /dev/null ;
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
source $ZSH/oh-my-zsh.sh
source .zsh-alias

# system paths & enviroment variables
export PATH="/usr/local/bin:/usr/local/sbin:/Users/bill/.rvm/bin/:/usr/local/mysql/bin:/usr/local/share/npm/bin:~/Projects/scripts:$PATH"
export PYTHONPATH=/usr/local/lib/python2.6/site-packages
#export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/go/bin:/usr/local/mysql/bin:/usr/local/share/npm/bin:~/Projects/scripts:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Users/bill/.rvm/bin
export WORKON_HOME=~/.py_env
export NODE_PATH=/usr/local/lib/node
export VIRTUALENV_USE_DISTRIBUTE="True"
export EDITOR="mvim -f"
export TERM="xterm-256color"
export CC="gcc-4.2" # required by RVM

# compile x86-64 binaries
# this breaks building native extensions under JRuby 1.6.3 on Mac OS 10.7
# this is likely also true for the system MRI Ruby on 10.7, too.
#export ARCHFLAGS="-arch i386 –arch x86_64"

