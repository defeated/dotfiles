require 'rubygems'
require 'pp'
require 'wirble'
require 'irb/completion' 

# Enable Indentation in irb
IRB.conf[:AUTO_INDENT] = true 

# Enable Syntax Coloring 
Wirble.init
Wirble.colorize

puts "Loaded ~/.irbrc"