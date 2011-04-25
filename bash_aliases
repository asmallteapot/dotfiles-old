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

# github–git integration
if command_exists hub ; then
	alias git=hub
fi

# lazy!
alias g=git

# update a rails project
alias pur="g pull && bundle install && rake db:migrate && g co -- db/schema.rb && growlnotify -t 'Ruby on Rails' -m 'Application updated.' --image '/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/lib/ruby/gems/1.8/gems/rails-2.3.5/html/images/rails.png'"
