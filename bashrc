source ~/.bash_config
source ~/.bash_aliases

# system paths & enviroment variables
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/go/bin:/usr/local/mysql/bin:/usr/local/share/npm/bin:$PATH"
export PYTHONPATH=/usr/local/lib/python2.6/site-packages
export WORKON_HOME=~/.py_env
export NODE_PATH=/usr/local/lib/node
export VIRTUALENV_USE_DISTRIBUTE="True"
export EDITOR="vim"
export TERM="xterm-256color"


# MAGIC
export CLARITY_SECURE_OFF="Lobsters"


# use .localrc for machine-specific settings
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi
