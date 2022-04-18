class Character
    attr_accessor :name, :exp
    def initialize (name)
        @name = name
        @exp = 0
    end

    def exp_gain(amount)
        @exp += amount
    end
end