require_relative './profile.rb'
require_relative "./Stories/book_layout.rb"
require "bundler"
Bundler.require(:default)
require_relative "./Stories/Breath of The wild/Breath_of_the_wild.rb"
require_relative "./Stories/book_layout.rb"

   
class Adventure 
    def initialize
        intro
    end
end

    def intro
    clear
    a = Artii::Base.new :font => 'slant'
    puts a.asciify("Welcome  To ").green
    puts a.asciify("StoryBooks Adventure").green
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
        when "Three_Pigs"
            threepigs = ThreePigs.new
            three_ending = threepigs.intro
            ending += three_ending.to_i
            end_story
        when "Breath_of_the_wild"
           username = Breath.new
           username.welcome
        when "Exit"
        quit_app
    end
end
 
Adventure.new