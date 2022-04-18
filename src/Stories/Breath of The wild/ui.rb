require_relative "character"
require_relative "../../book_layout.rb"
require 'Artii' 
require 'colorize'


def welcome 
    clear
    sleep 0.5
    title2 = Artii::Base.new :font => 'slant'
    puts title2.asciify("Breath of the Wild").blue
    line_break
    chat "Type " + "Help ".red + "for instruction"
    line_break_space
    chat "or, " + "Start ".light_blue + "to begin your advature"
    line_break_space
    while true 
        prompt; type = gets.chomp.downcase
        if type.include?("s") == true
            input_names 
        elsif type.include?("h") ==true
            helps
        elsif type.include?("q") == true
            end_story
        else
            exit
        end
    end
end

def input_names
    chat "Set your worrior name: "
end     

welcome



# player = Character.new(avatar)