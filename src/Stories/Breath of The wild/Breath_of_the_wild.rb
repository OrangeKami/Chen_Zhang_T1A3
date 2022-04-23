# require_relative "./Character.rb"
require_relative "../book_layout.rb"
require_relative "./lib/Starting.rb"
require_relative "./lib/Ending.rb"
require 'Artii' 
require 'colorize'

class Breath
    def initialize
       welcome
    end
        
end
    #welcome ask to play or leave
    def welcome 
        clear
        sleep 0.5
        title2 = Artii::Base.new :font => 'slant'
        showup title2.asciify("Breath of the Wild").blue
        line_break
        chat "Type " + "Help ".red + "for instruction"
        line_break_space
        chat "or, " + "Start ".light_blue + "to begin your advature"
        line_break_space
        while true 
            prompt; type = gets.chomp.downcase
            if type.include?("s") == true
                this_story = Starting.new
                this_story.start_story
            elsif type.include?("h") ==true
                helps
            elsif type.include?("q") == true
                end_story
            else
                exit
            end
        end
    end

   