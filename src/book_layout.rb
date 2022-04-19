#    require_relative "./Stories.rb"
   #choose exit or back to the main menu
    def end_story
        sleep 1
        line_break
        chat "Whould you like to choose another Story?"
        line_break_space
        chat "Y/N"
        line_break_space
        another_story = gets.chomp.downcase
        if another_story.include? "y"
            load './Stories.rb'
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

    #artii style end at the end of the story
    def the_end
        title = Artii::Base.new 
        puts title.asciify("THE   END").red
    end

    #line break
    def line_break
        puts "\n"
        puts "-" * 70
    end
    
    def line_break_space 
        puts "\n"
        puts "\n"
    end

    #make line like type in
    def chat(content)
        content.each_char {|c|print c; sleep 0.02}
        sleep 1
    end
    
    #clear termianl screen
    def clear
        system ("cls")
    end
    
    #setr prompt symbol and color
    def prompt ()
        print ">".light_red
    end
    
    # indicate helps
    def helps  
        chat "type " + "q ".red + "or " + "quit: ".red + "back to the main menu or quit"
        line_break_space
        chat "type " + "start ".blue + "to start you story"
        line_break_space
    end

    