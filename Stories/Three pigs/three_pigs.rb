require_relative '../book_layout.rb'
require 'Artii'

def intro 
    puts "Once upon a time there were three little pigs."
end


title = Artii::Base.new :font => 'slant'
puts title.asciify("Three Pigs").colorize(:red)

sleep 1
intro