source ~/.bash_config
source ~/.bash_aliases

# system paths & enviroment variables
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/go/bin:/usr/local/mysql/bin:$PATH"
export PYTHONPATH=/usr/local/lib/python2.6/site-packages
export EDITOR="mate -rw"
export TERM="xterm"


# use .localrc for machine-specific settings
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi
