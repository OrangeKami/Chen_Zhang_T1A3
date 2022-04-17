  require "bundler"
  Bundler.require(:default)
  require 'Artii'
  #wrong relative will display three pigs before welcome title
  # require_relative "./Stories/Three pigs/three_pigs.rb"
  require_relative "./Stories/book_layout.rb"

  #clear the terminal
  # puts "\e[H\e[2J"
  # Use layout.rb to save lines
  clear
  #welcome title
  a = Artii::Base.new :font => 'slant'
  puts a.asciify("Welcome  To ").colorize(:green)
  puts a.asciify("StoryBooks Advanture").colorize(:green)
 #choose the books from Stories folder
    prompt = TTY::Prompt.new
    "Select a story to advanture:\n ".each_char {|c|print c; sleep 0.05}
    sleep 0.5
    choose = prompt.select(" ") do |menu|
    menu.enum '.'
    menu.choice"Three Pigs"
    menu.choice"Wild of wild"
    menu.choice"hahaha"
    menu.choice"Exit"
    end
    case choose
      when "Three Pigs"
          load "./Stories/Three pigs/three_pigs.rb"
      when "Exit"
        # puts "\e[H\e[2J"
        clear
      end