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

# Source other configuration files
unsetopt auto_name_dirs
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s "/usr/local/bin/virtualenvwrapper.sh" ]] && source "/usr/local/bin/virtualenvwrapper.sh"
source $ZSH/oh-my-zsh.sh
source ~/.zsh-alias

# system paths & enviroment variables
export PATH="~/.scripts:/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/ruby192/1.9.2-p290/bin:/usr/local/share/python:/usr/local/mysql/bin:/usr/local/share/npm/bin:$PATH"
export PYTHONPATH=/usr/local/lib/python2.7/site-packages
export WORKON_HOME=~/.py_env
export NODE_PATH=/usr/local/lib/node
export NODE_PATH=/usr/local/lib/node_modules
export VIRTUALENV_USE_DISTRIBUTE="True"
export EDITOR="mvim -f"
export TERM="xterm-256color"

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

# Load virtualenvwrapper
[[ -x "/usr/local/bin/virtualenvwrapper.sh" ]] && source "/usr/local/bin/virtualenvwrapper.sh"

# Turn on auto–detection of .rvmrc files
[ -x __rvm_project_rvmrc ] && __rvm_project_rvmrc

