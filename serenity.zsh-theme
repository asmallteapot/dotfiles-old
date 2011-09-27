if [ "x$OH_MY_ZSH_HG" = "x" ]; then
    OH_MY_ZSH_HG="hg"
fi

function rvm_info () {
  local gemset=$(echo $GEM_HOME | awk -F'@' '{print $2}')
  [ "$gemset" != "" ] && gemset="%{$fg[red]%}@$gemset%{$reset_color%}"
  local version=$(echo $MY_RUBY_HOME | awk -F'-' '{print $2}')
  #[ "$version" == "1.8.7" ] && version=""
  #[ "$version" == "1.6.0" ] && version="jruby"
  [ "$version" != "" ] && version="%{$fg[red]%}$version%{$reset_color%}"
  local full="[$version$gemset]"
  [ "$full" != "[]" ] && echo $full
}

function hg_prompt_info {
    $OH_MY_ZSH_HG prompt --angle-brackets "\
< on %{$fg[magenta]%}<branch>%{$reset_color%}>\
< at %{$fg[yellow]%}<tags|%{$reset_color%}, %{$fg[yellow]%}>%{$reset_color%}>\
%{$fg[green]%}<status|modified|unknown><update>%{$reset_color%}<
patches: <patches|join( → )|pre_applied(%{$fg[yellow]%})|post_applied(%{$reset_color%})|pre_unapplied(%{$fg_bold[black]%})|post_unapplied(%{$reset_color%})>>" 2>/dev/null
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo '☿' && return
    echo '$'
}

function battery_charge {
    echo `battery.py` 2>/dev/null
}

function return_code {
	echo "%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )"
}

PROMPT='
[%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}$(box_name)%{$reset_color%}:%{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}]$(prompt_char) '

ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

RPROMPT='$(return_code) $(hg_prompt_info)$(git_prompt_info) $(rvm_info) $(battery_charge)'

