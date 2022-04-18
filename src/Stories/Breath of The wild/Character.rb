class Character
    attr_accessor :name, :exp
    def initialize (name, exp)
        @name = name
        @exp = exp
    end

    def exp_gain(amount)
        @exp += amount
    end
end