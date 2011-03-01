# show trailing slash for directories
alias ls='ls -p'

# cd to projects
function p { cd ~/Projects/$1; }

# quick look
alias ql='qlmanage -p "$@" >& /dev/null'

# reload bash config
alias reload='. ~/.bash_profile'

# open xcode project
alias xcode="open *.xcodeproj"
