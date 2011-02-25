# show trailing slash for directories
alias ls='ls -p'

# quick look
alias ql='qlmanage -p "$@" >& /dev/null'

# cd to projects
function p { cd ~/Projects/$1; }

# reload bash config
alias reload='. ~/.bash_profile'
