require_relative '../Stories/Breath of The wild/lib/Castle.rb'
require_relative '../Stories/Breath of The wild/lib/Forest.rb'

RSpec.describe Castle do
    describe '#castle_start' do
        it 'describe the situation of Castle' do
            a = Castle.new
            expect(a.castle_start).to be('You walking infront of the door and see it says')
        end
    end
    
        describe '#guess_password' do
            it 'returns to the endings if password is right' do
           
            a = Castle.new 
            
            expect(a.guess_password, guess = 139).to be("The door is opened!!")
        end
    end 
end

RSpec.describe Forest do
    describe '#forest_start' do 
        it 'should leads to the death' do
            a = Forest.new
            expect(a.forest_start, choose2 = 2).to be("How stupid you are~~~~~~~~~")
        end
    end
end

describe '#forest_start' do 
    it 'should leads to the death' do
        a = Forest.new
        expect(a.forest_start, choose2 = 1).to be("Run away, you little thieve?")
    end
end