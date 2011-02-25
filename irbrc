#!/usr/bin/env ruby
require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
IRB.conf[:PROMPT_MODE] = :SIMPLE


%w[rubygems utilitybelt].each do |gem|
  begin
    require gem
  rescue LoadError
  end
end


def paste
  `pbpaste`
end
