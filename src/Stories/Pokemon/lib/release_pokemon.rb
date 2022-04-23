

def release_pokemon(pokemon_array)
    system 'cls'
    pokemon = []
    poke_names = []
    csv_text = File.read("./data.csv")
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
        pokemon << row.to_hash
    end

    csv_array = csv.to_a 
    user_table = Terminal::Table.new do |v|
        v.style = { :border => :unicode_round }
        v.title = "Pokédex"
        v.headings = csv_array[0]
        v.rows = csv_array[2..-1]
    end
    puts user_table

    pokemon[2..-1].sort_by! { |mon| mon["Name"]}
    pokemon[1..-1].each do |thing|
    poke_names << thing["Name"]
  end
  line_break
    
    chat "Which pokemon you would like to release?"
    line_break_space
    prompt
    line_break
   
    release = gets.chomp
     if poke_names.include?(release)
        read_file = File.new('data.csv', "r+").read
        write_file = File.new('data.csv', "w+")

        read_file.each_line do |line|
        write_file.write(line) unless line.include? release
        end
        line_break_space
        chat "Your #{release} ".red + "has been released."
        write_file.close
        sleep 2
    else
        line_break
        chat "Can not find you pokemon."
        line_break_space
        chat "Return to Menu"
        sleep 2
    end
    
end
    









