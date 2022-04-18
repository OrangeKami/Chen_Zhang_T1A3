require_relative "../../book_layout.rb"
require './Character.rb'
require 'colorize'
require "bundler"
Bundler.require(:default)
require 'Artii'
require './Castle.rb'
require './Treasure.rb'

class Forest
    def initialize()
        clear
        title3 = Artii::Base.new :font => 'slant'
        puts title3.asciify("Froest").green
        line_break
        chat "You are step into the forest"
    end

    def forest_start
        line_break
        chat "You cross the forest, heading to the castle"
        line_break_space
        chat "chosse a path: castle or "
        line_break_space
        chat ">".red
        choose2 = gets.chomp.downcase
        if choose2.include? "c"
            line_break_space
            chat "you are heading to the castle"
            castle = Castel.new()
            castle.castle_start
        else
            line_break_space
            chat "You find a secret cave, you step into it and find a treasue chest"
            line_break_space
            treasue = Treasure.new()
            treasue.treasure_start
        end
    end
end