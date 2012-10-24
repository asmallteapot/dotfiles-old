# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME='serenity'

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby osx)

# enviroment variables
export HUMAN="Bill Williams"
export EDITOR="mate -w"
export EMAIL="bill@flpatriot.com"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/heroku/bin:/usr/local/share/python:/usr/local/share/npm/bin:$HOME/.rbenv/bin:$PATH"
export PYTHONPATH=/usr/local/lib/python2.7/site-packages
export TERM="xterm-256color"
export VIRTUALENV_USE_DISTRIBUTE="True"
export WORKON_HOME=~/.virtualenv

# Source other configuration files
unsetopt auto_name_dirs
[[ -s "/usr/local/bin/virtualenvwrapper.sh" ]] && source "/usr/local/bin/virtualenvwrapper.sh"
source $ZSH/oh-my-zsh.sh
source ~/.zsh-alias

# “Restore” support for Terminal.app under Lion
# Set Apple Terminal.app resume directory
if [[ $TERM_PROGRAM == "Apple_Terminal" ]] && [[ -z "$INSIDE_EMACS" ]] {
  function chpwd {
    local SEARCH=' '
    local REPLACE='%20'
    local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
    printf '\e]7;%s\a' $PWD_URL
  }

  chpwd
}

# load rbenv
if which rbenv > /dev/null; then; eval "$(rbenv init -)"; fi

# load virtualenvwrapper
export VIRTUAL_ENV_DISABLE_PROMPT=true
[[ -x "/usr/local/share/python/virtualenvwrapper.sh" ]] && source "/usr/local/share/python/virtualenvwrapper.sh"
