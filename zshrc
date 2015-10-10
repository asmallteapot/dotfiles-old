# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set backup prompt in case zsh theme fails to load.
PROMPT=[%n@$(hostname -s):%~]$\ 

# Configure option-arrow keys in iTerm 2
bindkey '[C' forward-word
bindkey '[D' backward-word

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME='serenity'

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew git osx virtualenv virtualenvwrapper)

# enviroment variables
export HUMAN="Bill Williams"
export EDITOR="vim -f"
export EMAIL="bill@flpatriot.com"
export GOPATH="/usr/local/Cellar/go/1.3"
export PATH="/usr/local/bin:/usr/local/sbin:$GOPATH:/usr/local/heroku/bin:/usr/local/share/npm/bin:$HOME/.bin:$HOME/.rbenv/bin:$PATH"
export PROJECTS="$HOME/Projects"
export PYTHONPATH=/usr/local/lib/python2.7/site-packages
export RBENV_ROOT=/usr/local/var/rbenv
export TERM="xterm-256color"
export VIRTUALENV_USE_DISTRIBUTE="True"
export WORKON_HOME=~/.virtualenv

function source_if_exists {
    [[ -s $1 ]] && source $1
}

# Source other configuration files
unsetopt auto_name_dirs
source_if_exists "/usr/local/bin/virtualenvwrapper.sh"
source_if_exists $ZSH/oh-my-zsh.sh
source_if_exists ~/.zsh-alias
source_if_exists ~/.zsh/$(hostname -s).sh

# load rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# load virtualenvwrapper
export VIRTUAL_ENV_DISABLE_PROMPT=true
[[ -x "/usr/local/share/python/virtualenvwrapper.sh" ]] && source "/usr/local/share/python/virtualenvwrapper.sh"

# load zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

