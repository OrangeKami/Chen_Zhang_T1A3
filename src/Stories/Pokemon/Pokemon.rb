require "bundler"
Bundler.require(:default)
require_relative './lib/pokemon_adv.rb'
require_relative './lib/release_pokemon.rb'
require_relative './lib/Pokedex.rb'
require_relative '../../main.rb'
require_relative '../book_layout.rb'
require_relative '../../main.rb'
    
   clear
        line_break
      a = Artii::Base.new :font => 'epic'
      showup a.asciify("Pokemon").green
       line_break
       sleep 1         
            
    def pokemon_menu
    line_break
    chat "Welcom to Pokemon World!".cyan
    line_break_space
    xuanxiang = TTY::Prompt.new
    choosep = xuanxiang.select("Would you like to:") do |menu|
        menu.choice name: "Start your adaventure", value: 1
        menu.choice name: "Pokedex", value: 2
        menu.choice name: "Release your pokemon", value: 3
        menu.choice name: "Return to Adventure books", value: 4
        menu.choice name: "Exit Pokemon", value: 5
    end
    return choosep
    end

    while true
        # pokemon_intro
        choosep = pokemon_menu
        pokemon_array = []

        case choosep
        when 1
            poke_adaventure(pokemon_array)
        when 2
            poke_index
        when 3
            release_pokemon(pokemon_array)
        when 4
           Adventure.new
        when 5
            quit_app
        end
end
    

