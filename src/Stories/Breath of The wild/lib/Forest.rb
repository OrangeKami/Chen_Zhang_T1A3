require_relative "../../book_layout.rb"
require "bundler"
Bundler.require(:default)

require_relative './Castle.rb'
require_relative './Treasure.rb'

class Forest
    def initialize()
        clear
        title3 = Artii::Base.new 
        puts title3.asciify("Forest").green
        line_break
        chat "You are step into the forest".green
        forest_start
    end

    def forest_start
        line_break
        chat "It's a hugh Froest, you spend days to find the way but still not seen the exit.".green
        line_break_space
        chat "You are now exhausted and starving. ".green + "Suddenly, ".red + "you are smelling somthing good not far from you".green
        line_break_space
        chat "You rush to where the smelling come from, and find a ".green + "HUGE ANCIENT TREE ".blue + "full of fruits in front of you".green
        line_break_space
        chat "Are the fruits deliciouse?\n".red
        chat "A very angry sound upon you.".green
        line_break
        chat "Take action now:".red
        action1 = TTY::Prompt.new
        choose2 = action1.select(" ") do |menu|
            menu.enum '.'
            menu.choice"Run Away!", 1
            menu.choice"Try to negociate with Ancient tree", 2
            menu.choice"Fight!!", 3
        end
            
        case choose2
            when 1 
                line_break
                chat "Run away, you little thieve?".red
                line_break_space
                chat "THE ANCIENT TREE ".red + "wave his branches, grab the warrior throw into his mouth!!".green
                line_break_space
                5.downto(1) do |n|
                    puts '.'
                    sleep n
                end
                Treasure.new

            when 2
                line_break
                chat "The Ancient Tree knows you are warrior who want to save the world.".green
                line_break_space
                chat "He gives you more fruits and point out the way to the Castle.".blue
                sleep 2
                Castle.new

            when 3
                line_break
                chat "How stupid you are~~~~~~~~~".red
                line_break
                you_died
                line_break
                death

        end
        
        
    end
end