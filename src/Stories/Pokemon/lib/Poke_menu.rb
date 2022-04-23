


def pokemon_menu
    line_break
    chat "Welcom to Pokemon World!"
    line_break_space
    xuanxiang = TTY::Prompt.new
    choosep = xuanxiang.select("Would you like to:") do |menu|
        menu.choice name: "Start your adaventure", value: 1
        menu.choice name: "Pokedex", value: 2
        menu.choice name: "Release your pokemon", value: 3
        menu.choice name: "Exit Pokemon", value: 4
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
            exit 
        end
end