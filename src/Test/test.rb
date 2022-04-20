
class Chara 
    attr_accessor :name
    def initialize(name)
        @name = name
        
end
    def show 
        puts "#{@name} is me!"
    end
end



new_name = gets.chomp
haha = Chara.new(new_name)
haha.show