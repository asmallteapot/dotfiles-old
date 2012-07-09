source ~/.bash_config
source ~/.bash_aliases

# system paths & enviroment variables
export HUMAN="Bill Williams"
export EDITOR="mate -w"
export EMAIL="bill@flpatriot.com"
export PATH="~/.scripts:/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/ruby192/1.9.2-p290/bin:/usr/local/share/python:/usr/local/mysql/bin:/usr/local/share/npm/bin:$PATH"
export PYTHONPATH=/usr/local/lib/python2.7/site-packages
export TERM="xterm-256color"
export VIRTUALENV_USE_DISTRIBUTE="True"
export WORKON_HOME=~/.virtualenv

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
