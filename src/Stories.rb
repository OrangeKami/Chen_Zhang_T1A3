  require "bundler"
  Bundler.require(:default)
  # require 'Artii'
  require_relative "./Stories/Three pigs/Three_Pigs.rb"
  require_relative "./Stories/Breath of The wild/Breath_of_the_wild.rb"
  require_relative "./Stories/book_layout.rb"
  require_relative "./Stories/Character.rb"
  
    
 class Stories
    attr_accessor :user, :name
    def initialize 
      @user = read_file
      @prompt = TTY::Prompt.new
    end
    
    def check_save 
      clear
      # if File.exist?("./user.sav")
      #   chat "Welcome Back #{@name}!"
      #   intro
      # else
        new_name = gets.chomp
        new_exp = 0
        @user = Character.new(*new_name, new_exp)
        write_file
        @user.show_file
        sleep 3
        intro
      # end
    end
 
    # #welcome title
   def intro
    
      clear
      a = Artii::Base.new :font => 'slant'
      puts a.asciify("Welcome  To ").green
      puts a.asciify("StoryBooks Adventure").green
    
      #choose the books from Stories folder
      
      line_break_space
      sleep 0.5
      choose = @prompt.select("Select a story to adventure:\n  ") do |menu|
        menu.enum '.'
        Dir.glob("./Stories/*/*.rb").each do |book_rb|  
          choose = File.basename(book_rb, ".rb")
          menu.choice choose   
        end
        menu.choice "user_file"
        menu.choice "Exit"
        end
        case choose
        when "Three_Pigs"
          ThreePigs.new
        when "Breath_of_the_wild"
          Breath.new
        when "User_file"
          read_file
        when "Exit"
          write_file
          exit
        end
      end
    
    
  end
