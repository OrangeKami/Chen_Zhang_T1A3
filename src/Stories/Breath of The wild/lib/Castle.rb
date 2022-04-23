require_relative "../../book_layout.rb"
require_relative "./Ending.rb"

class Castle
    def initialize
        clear
        title4 = Artii::Base.new 
        puts title4.asciify("Castle").red
        line_break
        chat "You are in the castel, there is no Big Boss here expect a Huge Door with three number password."
        @guess = 5
        castle_start
        guess_password
    end

     def castle_start
        line_break
        chat "You walking infront of the door and see it says"
        line_break_space
        chat "You only have five chances!!".blue
        line_break
    end
    
    def guess_password
        line_break_space
        puts "[NUM PAD]"
        prompt; guess = gets.chomp
        case guess
        when "139"
            line_break_space
            chat "The door is openedn!!".blue
            sleep 2
            ending3
        else
            if @guess == 1 
                ending4
            else
                @guess -= 1
                chat "Wrong Password ".red + "Please try again~".magenta
                guess_password
            end 
        end
    end
    
   



end