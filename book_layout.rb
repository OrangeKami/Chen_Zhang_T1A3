class Book_layout
    def end_story
        sleep 1
        puts "Whould you like to choose another Story?"
        puts ""
        puts "Y/N"
        another_story = gets.chomp.downcase
        if another_story.include? "y"
            load "./Stories.rb"
        elsif another_story.include? "n"
            puts "Thank You"
            sleep 1
            system ("cls")
            exit
        else  
            puts "Bye Bye"
            sleep 1
            system ("cls")
            exit 
        end
    end

    def line_break
        puts "*" * 70
    end

    def chat(content)
        puts content
        sleep 1
    end
   
end
