require_relative '../book_layout.rb'
require 'Artii'
require 'colorize'

def intro 
    "Once upon a time there were three little pigs.".each_char {|c|print c; sleep 0.03}
    line_break_space
    "And there was a wolf who liked to catch little pigs and eat them up.".each_char {|c|print c; sleep 0.03}
end

clear
sleep 0.5
title = Artii::Base.new :font => 'slant'
puts title.asciify("Three Pigs").colorize(:red)

sleep 1
line_break
intro
def choose
    puts "\n"
    prompt = TTY::Prompt.new
    "Choose a pig:".each_char {|c|print c; sleep 0.03}
    sleep 0.5
    pigs = prompt.select(" ") do |menu|
    menu.choice"First Pig"
    menu.choice"Middle Pig"
    menu.choice"Oldest Pig"
    end

    case pigs
    when "First Pig"
        line_break
        chat "The first pig built his house of straw.He was done with his building very quickly and without much hard work.".colorize(:green)
        line_break_space
        chat "A big bad wolf popped from woods and huffed and puffed and blew the house down in minutes.".colorize(:green)
        sleep 1
        line_break_space
        chat "Fist pig ran away to middle brother's house~~~".colorize(:green)
        line_break
        return choose
    when "Middle Pig"
        line_break
        chat "The midlle brother devided to build a house of sticks.".colorize(:blue)
        line_break_space
        chat "The wolf now came to this house and huffed and puffed and blew the house down in hardly any time.".colorize(:blue)
        line_break_space
        chat "Now, both terrified pigs ran to their oldest brother's house~~".colorize(:blue)
        line_break
        return choose
    when "Oldest Pig"
        line_break
        chat "The oldest amongst them decided to build a house of bricks.".colorize(:magenta)
        line_break_space
        chat "The big bad wolf tried to huff and puff and blow the third house down, but he could not. He kept trying for hoursbut house was very strong and all the three pigs were safe inside.".colorize(:magenta)
        line_break_space
        chat "He tried to enter through the chimney but the third pig boild a big pot of water and kept it below the chimney.".colorize(:magenta)
        line_break
    end
end
choose

def end_three_pigs
    line_break
    chat "The wolf fell into it and died.".colorize(:cyan)
    line_break_space
    chat "The two young pigs felt sorry for being lazy while building the houses".colorize(:cyan)
    line_break_space
    chat "They also built their houses with bricks and all three little pigs lived happily ever after.".colorize(:cyan)
    line_break_space
    chat "THE END".colorize(:red)
    line_break
    end_story
end

end_three_pigs