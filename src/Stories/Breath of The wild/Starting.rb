require_relative "../../book_layout.rb"
require './Character.rb'
require 'colorize'
require "bundler"
Bundler.require(:default)
require "./Forest.rb"



class Starting 
    def initialize()
        clear
        chat "what is you name?"
        line_break_space
        prompt; @name = gets.chomp.upcase 
        #new character and set exp to 0
        # player = Character.new(name, 0)
        clear
        t = Artii::Base.new
        puts t.asciify("Wake up !").green
        sleep 2
        clear
        sleep 2
        puts t.asciify("Wake up !").green
        sleep 2
        line_break
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
                #gain exp still working on it
                # player_exp = player.exp_gain(50)
                line_break_space
                the_end
                sleep 2
                clear
                return welcome
            when  "go to the path"
                chat "You walk on the path and see a wooden house."
                line_break_space
               loop do#loop to let you choose the right path
                    line_break
                    chat "Please choose wooden house or path?"
                    line_break
                    chat ">".red
                    choose1 = gets.chomp.downcase
                    if choose1.include? "w"
                    line_break_space
                    chat "You are close to the wooden house and an older man shows up"
                    line_break_space
                    chat "He tells you there is a secret path that will lead you to the castle in the forest and is an " + "empty ".cyan + "place."
                    line_break_space
                    chat "You leave the house and follow the path"
                    break 
                    #exp problem
                #    player_exp = exp_gain(500)
                    elsif choose1.include? "p"
                    line_break_space
                    chat "You are walking on the path with nice scene."
                    break 
                
                    else 
                    chat "You have to choose your way"
                    end
                end
            end
            forest = Forest.new()
            forest.forest_start
      end       
end