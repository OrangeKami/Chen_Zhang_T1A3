require_relative "../../book_layout.rb"
require './Character.rb'
require 'bundler'
Bundler.require(:default)

class Starting 
    def initialize()
        clear
        chat "what is you name?"
        line_break_space
        prompt; @name = gets.chomp
        clear
        t = Artii::Base.new
        puts t.asciify("Wake up!").green
        sleep 2
        clear
        sleep 2
        puts t.asciify("Wake up!").green
        sleep 2
        chat "Hi, #{@name}, I am princess Peach, I am trapping at Castle by the Big Boss."
        line_break_space
        chat "Come, warrior. Come to save me and the world~"
        sleep 1
    end

    def start_story
        line_break
        chat "You heared the voice, and step out the cave."
        line_break_space
        chat "You are now next to the cliff and you can see the castle across the forest, and there is a path down to the forest"
        line_break_space
        prompt = TTY::Prompt.new
        "Which way you wanna go:\n ".each_char {|c|print c; sleep 0.05}
         sleep 0.2
         path = prompt.select(" ") do |menu|
            menu.enum '.'
            menu.choice"Climb down to the forest"
            menu.choice"go to the path"
            end
            case path 
            when "Climb down to the forest"
                chat "you fell down at half way"
                line_break_space
                the_end
            else
            end
      end       
end