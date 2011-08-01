source ~/.bash_config
source ~/.bash_aliases

# system paths & enviroment variables
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/go/bin:/usr/local/mysql/bin:/usr/local/share/npm/bin:~/Projects/scripts:$PATH"
export PYTHONPATH=/usr/local/lib/python2.6/site-packages
export WORKON_HOME=~/.py_env
export NODE_PATH=/usr/local/lib/node
export VIRTUALENV_USE_DISTRIBUTE="True"
export EDITOR="mvim -f"
export TERM="xterm-256color"
export CC="gcc-4.2" # required by RVM
export ARCHFLAGS="-arch i386 –arch x86_64" # compile x86-64 binaries

# autocompletion
source `brew --prefix git`/etc/bash_completion.d/git-completion.bash
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
	
	complete -o default -o nospace -F _git g
fi


# MAGIC
export CLARITY_SECURE_OFF="Lobsters"


# use .localrc for machine-specific settings
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi
