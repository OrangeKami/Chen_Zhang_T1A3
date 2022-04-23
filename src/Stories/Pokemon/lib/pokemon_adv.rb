require "bundler"
Bundler.require(:default)

class Pokemon_adv 
    attr_accessor :poke_name, :gender, :location
    def initialize(poke_name, gender, location)
            @poke_name = poke_name
            @gender = gender
            @location = location
    end    
end    
    
    #random choose the pokemon from database and write into CSV file
    def poke_adaventure(pokemon_array) 
        #pokemon database
        poke_name = ["Pikachu", "Charmander", "Squirtle", "Bulbsaur", "Diglett", "Abra", "Ponyta", "Magikarp", "Eevee", "Mewtwo"]
        gender = ["Female", "Male", 'Uni-sex']
        location = ["Route1", "Route2", "Route13", "Route15", "Route28", "Berry_Fprest", "Four_island", "Lost_cave", "Tanoby Ruins"]

        clear
        chat "Hi, I am Professor Oak."  
        line_break_space
        chat "Welcome to Pokemon world!!".green
        line_break_space
        chat "REMEMBER: ".red + "You can only meet" + " THREE".magenta + " pokemons per day!!"
        line_break

        
        start = Pokemon_adv.new(poke_name.sample(3), gender.sample(3), location.sample(3))
        pokemon_array << start
        
        
        
        i = 3
        loop do 
            line_break
            chat "You are walking at " + "#{start.location[0]}.".blue
            line_break_space
            chat "Sunddenly, a wild #{start.gender[0]} " + "#{start.poke_name[0]} ".cyan + "shows up!"
            line_break_space
            chat "It seems harmless~"
            line_break_space
            chat "Do you want to catch " + "#{start.poke_name[0]}".cyan + "? Y/N"
            line_break_space
            prompt; type = gets.chomp.downcase
                if type.include?("y") == true
                    line_break_space
                    chat "#{start.poke_name[0]} ".cyan + "is captured."
                    line_break_space
                    chat "Now, it is transfered to you pokedex."
                    sleep 1
                    i -= 1
                    CSV.open("data.csv", "ab") do |csv|
                        csv << [start.poke_name[0], start.gender[0], start.location[0]]
                    end 
                else
                    line_break_space
                    chat "It seems like you do not like "+ "#{start.poke_name[0]}.".cyan
                    line_break_space
                    chat "You only have two chances to meet pokemons."
                    i -= 1
                    sleep 1
                end
            
            if i == 2
                line_break
                chat "You just passed " + "#{start.location[0]}.".blue
                line_break_space
                chat "Now, you are at " + "#{start.location[1]}.".blue
                line_break_space
                chat "Sunddenly, a wild #{start.gender[1]} " + "#{start.poke_name[1]} ".cyan + "shows up!"
                line_break_space
                chat "It seems harmless~"
                line_break_space
                chat "Do you want to catch " + "#{start.poke_name[1]}".cyan + "? Y/N"
                line_break_space
                  prompt;  type = gets.chomp.downcase
                    if type.include?("y") == true
                        chat "#{start.poke_name[1]} ".cyan + "is captured"
                        line_break_space
                        chat "Now, it is transfered to you pokedex."
                        sleep 1
                        i -= 1
                        CSV.open("data.csv", "ab") do |csv|
                            csv << [start.poke_name[1], start.gender[1], start.location[1]]
                        end 
                    else
                        line_break_space
                        chat "It seems like you do not like "+ "#{start.poke_name[1]}.".cyan
                        line_break_space
                        chat "You only have one chance to meet Pokemons."
                        i -= 1
                        sleep 1
                    end
            end
        
            if i == 1
                line_break
                chat "It is you last chance to meet Pokemons"
                line_break_space
                chat "You just passed " + "#{start.location[1]}.".blue
                line_break_space
                chat "Now, you are at " + "#{start.location[2]}.".blue
                line_break_space
                chat "Sunddenly, a wild #{start.gender[2]} " + "#{start.poke_name[2]} ".cyan + "shows up!"
                line_break_space
                chat "It seems harmless~"
                line_break_space
                chat "Do you want to catch " + "#{start.poke_name[2]}".cyan + "? Y/N"
                line_break_space
                   prompt; type = gets.chomp.downcase
                    if type.include?("y") == true
                        line_break_space
                        chat "#{start.poke_name[2]} ".cyan + "is captured."
                        line_break
                        chat "Now, it is transfered to you pokedex."
                        sleep 3
                        i -= 1
                        CSV.open("data.csv", "ab") do |csv|
                            csv << [start.poke_name[2], start.gender[2], start.location[2]]
                        end 
                    else
                        i -= 1
                        line_break_space
                        chat "You missed your last chance!"
                        line_break_space
                        chat "Now, you are back home."
                        sleep 3
                    end
                
            end
        
            if i == 0
                line_break
                chat "You will return home."
                break
            end
        end 
    end