require_relative "../../book_layout.rb"
require './Character.rb'
require 'colorize'
require "bundler"
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
            line_break
            case path 
            when "Climb down to the forest"
                chat "you fell down at half way"
                # @exp = Character.exp_gain(50)
                line_break_space
                the_end
                sleep 2
                return start_story
            when  "go to the path"
                chat "You walk on the path and you see a wooden house."
                line_break_space
                chat "Please choose wooden house or path?"
                line_break
                choose1 = gets.chomp.downcase
                if choose1.include? "w"
                    chat "You are close to the wooden house and an older man shows up"
                    line_break_space
                    chat "He tells you there is a secret path will lead you to the castle in the forest and is an " + "empty ".cyan + "place."
                    line_break_space
                    chat "You leave the house and follow the path"
                    # @exp = Character.exp_gain(500)
                elsif choose1.include?
                    chat "You are walking on the path with nice scene."
                else
                    chat "You have to choose your way"
                   
                end
            end
      end       
end