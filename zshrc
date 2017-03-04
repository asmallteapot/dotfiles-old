# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set backup prompt in case zsh theme fails to load.
PROMPT=[%n@$(hostname -s):%~]$\ 

# set window title to current working directory
precmd() {
    echo -ne "\033]0;$PWD\007"
}


################################################################
# debugging
################################################################

# Log extra info when working on config files.
export DOTFILES_DEBUG=false

function LOG_DEBUG {
    if $DOTFILES_DEBUG; then;
        echo $1 > /dev/stderr
    fi;
}


################################################################
# iTerm2 keybindings
################################################################

# Configure option-arrow keys in iTerm 2
bindkey '[C' forward-word
bindkey '[D' backward-word


################################################################
# oh-my-zsh (deprecated)
################################################################

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME='serenity'

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew git osx virtualenv virtualenvwrapper)


################################################################
# environment variables
################################################################

export HUMAN="Ellen Teapot"
export EDITOR="vim -f"
export EMAIL="hi@asmallteapot.com"
export PROJECTS="$HOME/Projects"
export TERM="xterm-256color"

# manage path as a zsh array
# http://superuser.com/a/598924
# setting the type of $path to -U deduplicates entries
typeset -U path
path=(
    /usr/local/bin
    /usr/local/sbin
    $HOME/.bin
    $HOME/.cargo/bin
    $path
)

################################################################
# load other configuration files
################################################################

# sources files if they exist; otherwise, logs a warning if DEBUG=true
function source_if_exists {
    LOG_DEBUG "source_if_exists - invoked with $1"
    for file in $1; {
        LOG_DEBUG "source_if_exists - checking $file"
        if [[ -s $file ]]; then;
            LOG_DEBUG "source_if_exists - sourcing $file"
            source $file;
        else
            LOG_DEBUG "source_if_exists - can't source $file" > /dev/stderr
        fi
    }
}

unsetopt auto_name_dirs
source_if_exists $ZSH/oh-my-zsh.sh
source_if_exists ~/.zsh-alias
source_if_exists ~/.zsh/local/$(hostname -s).sh


################################################################
# python
################################################################

# auto-detect PYTHONPATH when installed via homebrew
if [[ -x brew ]]; then;
    BREW_PREFIX=`brew --prefix`
    PYTHON_VERSION=`python -c "import sys; print str(sys.version_info.major) + '.' + str(sys.version_info.minor)"`
    export PYTHONPATH="$BREW_PREFIX/lib/python$PYTHON_VERSION/site-packages"
else;
    # if we don't have homebrew, try asking the default python for its site-packages directory
    export PYTHONPATH=`python -c "import site; print site.getsitepackages()[0]"`
fi;

# load virtualenvwrapper
export VIRTUAL_ENV_DISABLE_PROMPT=true
export VIRTUALENV_USE_DISTRIBUTE="True"
export WORKON_HOME=~/.virtualenv
source_if_exists "/usr/local/share/python/virtualenvwrapper.sh"


################################################################
# shell plugins
################################################################

# load git autocomplete
source_if_exists "/usr/local/share/zsh/site-functions"

# load zsh-syntax-highlighting
source_if_exists ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# load powerline
source_if_exists $PYTHONPATH/powerline/bindings/zsh/powerline.zsh

# load rbenv shims
if [[ -x rbenv ]]; then;
    rbenv init -
fi;

# load swiftenv
if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

# load xcenv
if which xcenv > /dev/null; then eval "$(xcenv init -)"; fi
export XCENV_DO_NOT_SHIM_LIST="git"

