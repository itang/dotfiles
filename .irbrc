require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 10000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
IRB.conf[:AUTO_INDENT] = true

# use HIRB if available
begin
  require 'hirb'
  Hirb::View.enable
rescue LoadError => err
  #warn "No Hirb: #{err}"
end
