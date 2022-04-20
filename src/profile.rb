require "bundler"
Bundler.require(:default)

class Profile 
    attr_reader :username, :exp, :ending
    def initialize(username)
        @username = username
        @exp = exp   
        @ending = ending
    end

    def change_username(username)
        @username = username
    end

    def exp_gain(amount)
        @exp += amount
    end
    

    def profile_summary()
        table = TTY::Table.new do |t|
            t << ["Username:", @username]
            t << ["Experience", @exp]
            t << ["Endings", @ending]
        end
        return table
    end

    # def profile_data()
    #     return {
    #         'experience': @exp
    #     }
    # end

end
