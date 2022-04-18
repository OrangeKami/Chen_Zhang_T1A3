require_relative "../../book_layout.rb"
require_relative './Character.rb'
require 'colorize'
require 'Artii'
require_relative './Castle.rb'

class Treasure
    def initialize()
        clear
        title5 = Artii::Base.new :font => 'slant'
        puts title5.asciify("Chest").red
        line_break
        chat "You are in the Cave, a chest shows up~~"
    end

    def treasure_start
        line_break
        #should have 3 choioces here one teleport one item one the end
        chat "you open the chest, a mist come around you. you are teleported "
        castle = Castel.new()
        castle.castle_start
    end
end