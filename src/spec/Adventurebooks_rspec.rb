require_relative '../Stories/Breath of The wild/lib/Castle.rb'
require_relative '../Stories/Breath of The wild/lib/Forest.rb'
require_relative '../Stories/book_layout.rb'
describe Castle do
        it 'describe the situation of Castle' do
            
            expect(Castle.castle_start).to eq('You walking infront of the door and see it says')
        end
        
            it 'returns to the endings if password is right' do
            expect(Castle.guess_password, guess = 139).to eq("The door is opened!!")
        end
    end 


describe Forest do
        it 'should leads to the death' do
            
            expect(Forest.new.forest_start, choose2 = 2).to eq("How stupid you are~~~~~~~~~")
        end

    it 'should leads to the death' do
        
        expect(Forest.new.forest_start, choose2 = 1).to eq("Run away, you little thieve?")
    end
end

