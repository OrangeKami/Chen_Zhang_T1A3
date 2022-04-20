require_relative "./book_layout.rb"
class Character
    attr_accessor :name, :exp
    def initialize(name, exp)
        @name = name
        @exp = exp
    end

    def welcome1
        chat "Welcome #{@name}!"
    end

    def exp_gain(amount)
        @exp += amount
    end

    def show_file 
        line_break
        chat "User Name: #{@name}"
        line_break_space
        chat "User exp: #{@exp}"
    end
        
end