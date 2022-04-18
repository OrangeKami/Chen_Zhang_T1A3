require_relative "character"

def welcome 
    clear
    sleep 0.5
    title = Artii::Base.new :font => 'slant'
    puts title.asciify("Breath of the Wild").blue