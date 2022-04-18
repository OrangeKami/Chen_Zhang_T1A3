require_relative "../../book_layout.rb"
require_relative './Character.rb'
require 'colorize'
require 'Artii'

class Castle
    def initialize()
        clear
        title4 = Artii::Base.new :font => 'slant'
        puts title4.asciify("Castle").red
        line_break
        chat "you are in the castel, it is full with evil"
    end

    def castle_start
        line_break
        chat "you save the princes"
        line_break
        the_end
        line_break
        end_story
    end
end