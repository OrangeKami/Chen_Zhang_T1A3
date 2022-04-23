
    
    def poke_index
        
        csv_text = File.read('data.csv')
        csv = CSV.parse(csv_text, :headers => true)
        csv_array = csv.to_a 
        user_table = Terminal::Table.new do |v|
            v.style = { :border => :unicode_round }
            v.title = "Pokédex"
            v.headings = csv_array[0]
            v.rows = csv_array[2..-1]
        end
        puts user_table
        sleep 3
    end

    