  require "bundler"
  Bundler.require(:default)
  require 'Artii'
  require_relative "./Stories/Three pigs/Three_Pigs.rb"
  require_relative "./book_layout.rb"
  #clear the terminal
  # puts "\e[H\e[2J"
  # Use layout.rb to save lines
  clear
  #welcome title
  a = Artii::Base.new :font => 'slant'
  puts a.asciify("Welcome  To ").green
  puts a.asciify("StoryBooks Adventure").green
 #choose the books from Stories folder
    prompt = TTY::Prompt.new
    line_break_space
    sleep 0.5
    choose = prompt.select("Select a story to adventure:\n  ") do |menu|
      menu.enum '.'
      Dir.glob("./Stories/*/*.rb").each do |book_rb|  
        choose = File.basename(book_rb, ".rb")
      menu.choice choose   
      end
      menu.choice "Exit"
    end

    case choose
      when "Three_Pigs"
        ThreePigs.new
      when "Breath_of_the_wild"
        
      when "Exit"
        # puts "\e[H\e[2J"
        clear
      end
