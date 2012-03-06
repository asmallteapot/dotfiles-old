source ~/.bash_config
source ~/.bash_aliases

# system paths & enviroment variables
export PATH="~/.scripts:/usr/local/bin:/usr/local/sbin:/Users/bill/.rvm/bin/:/usr/local/share/python:/usr/local/mysql/bin:/usr/local/share/npm/bin:$PATH"
export PYTHONPATH=/usr/local/lib/python2.7/site-packages
export WORKON_HOME=~/.py_env
export NODE_PATH=/usr/local/lib/node_modules
export VIRTUALENV_USE_DISTRIBUTE="True"
export EDITOR="mvim -f"
export TERM="xterm-256color"

# autocompletion
source `brew --prefix git`/etc/bash_completion.d/git-completion.bash
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
	
	complete -o default -o nospace -F _git g
fi

# use .localrc for machine-specific settings
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi
