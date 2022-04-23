require "bundler"
Bundler.require(:default)
require_relative "./Stories/Breath of The wild/Breath_of_the_wild.rb"
require_relative "./Stories/Pokemon/Pokemon.rb" 
require_relative "./Stories/book_layout.rb"
   
class Adventure 
    def initialize
        intro
    end
end

    def intro
        clear
        a = Artii::Base.new :font => 'slant'
        showup a.asciify("Welcome  To ").green
        line_break_space
        showup a.asciify("StoryBooks Adventure").green
        #choose the books from Stories folder
        line_break_space
        sleep 0.5
        @prompt = TTY::Prompt.new
        choose = @prompt.select("Select a story to adventure:\n") do |menu|
        menu.enum '.'
        Dir.glob("./Stories/*/*.rb").each do |book_rb|  
            choose = File.basename(book_rb, ".rb")
            menu.choice choose   
        end
        menu.choice "Exit"
        end
    
    
        case choose
            when "Breath_of_the_wild"
            Breath.new
            when "Pokemon"
               load "./Stories/Pokemon/Pokemon.rb"
            when "Exit"
            quit_app
        end

    end

    Adventure.new