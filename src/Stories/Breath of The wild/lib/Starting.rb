require_relative "../../book_layout.rb"
require 'colorize'
require "bundler"
Bundler.require(:default)
require_relative "./Forest.rb"
require_relative './Ending.rb'



class Starting 
    def initialize
        clear
        t = Artii::Base.new
        puts t.asciify("Wake up !").green
        sleep 2
        clear
        sleep 2
        puts t.asciify("Wake up !").green
        sleep 2
        line_break
        chat "Hi, I am princess Peach, I am trapping at Castle by the Big Boss.".magenta
        line_break_space
        chat "Come, warrior. Come to save me and the world~".magenta
        sleep 1
        start_story
    end

    def start_story
        line_break
        chat "You heared the voice, and step out the cave.".magenta
        line_break_space
        chat "You are now next to the cliff and you can see the castle across the forest, and there is a path down to the forest".magenta
        line_break_space
        
        chat "Which way you gonna choose:\n "
        sleep 0.2 
        path1 = TTY::Prompt.new
        path = path1.select(" ") do |menu|
            menu.enum '.'
            menu.choice"Climb down to the forest"
            menu.choice"Alone to the path"
            end
            line_break
            
            case path 
                when "Climb down to the forest"
                    chat "AH AH AH ~~~~".red
                    line_break_space
                    chat "you fell down at half way"
                    line_break_space
                    you_died
                    line_break
                    death
            
                when  "Alone to the path"
                    chat "You walk on the path and see a wooden house not far froms you.".blue
                    line_break_space
                #loop to let you choose the right path
                        line_break
                        chat "Keep going or to the wooden house".blue
                        line_break_space
                        prompt; choose1 = gets.chomp.downcase
                        line_break
                        if choose1.include? "w"
                        line_break_space
                        chat "You come close to the wooden house and an older man shows up!!".blue
                        line_break_space
                        chat "He tells you 139 is a very important number!!"
                        line_break_space
                        chat "You leave the house and follow the path"
                    
                        else
                        line_break_space
                        chat "You passed the wooden house all the way to the forest".green
                        end
                        Forest.new
                    end
                end       
end