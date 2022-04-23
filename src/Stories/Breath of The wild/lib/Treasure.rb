require_relative "../../book_layout.rb"
require_relative "./Ending.rb"
require_relative './Castle.rb'

class Treasure
    def initialize
        clear
        line_break
        chat "You wake up, found you are inside the Ancient Tree".green
        line_break_space
        chat "You tried to find the exit carfully, but " + "A secrect MIST come around you!!".red
        line_break_space
        chat "You are teleported.".cyan
        sleep 2
        clear
        title5 = Artii::Base.new 
        puts title5.asciify("Treasure").cyan
        line_break
        treasure_start
    end

    def treasure_start
        line_break
        chat "There are two " + "Tresure Chests ".red + "infront of you."
        line_break_space
        prompt.ask("Which chest do you want to open? 1 or 2", require: true)
        answer = gets.chomp
        if answer = 1
            line_break
            chat "You open the first chest, and a secrect mist shows up~~".red
            line_break_space
            chat "You are teleported again.? again......"
            sleep 3
            Castle.new
            
        elsif answer = 2
            ending1
        else
            ending2
        end

        
        
    end
end