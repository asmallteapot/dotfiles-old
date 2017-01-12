function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    echo '$'
}

function battery_charge {
    [ -x battery.py ] && echo `battery.py` 2>/dev/null
}

function return_code {
	echo "%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )"
}

function virtualenv_prompt_info(){
	if [[ -n $VIRTUAL_ENV ]]; then
		printf ":%s%s%s" "%{${fg[yellow]}%}" ${${VIRTUAL_ENV}:t} "%{$reset_color%}"
	fi
}


ZSH_THEME_GIT_PROMPT_PREFIX=":%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='[%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}$(box_name)%{$reset_color%}:%{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info)$(virtualenv_prompt_info)]$(prompt_char) '

RPROMPT='$(return_code) $(battery_charge)'

precmd() {
    echo -ne "\033]0;$PWD\007"
}

