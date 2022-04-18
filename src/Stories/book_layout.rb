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

    def the_end
        title = Artii::Base.new 
        puts title.asciify("THE   END").red
    end

        #Ex:- :default =>''
    def line_break
        puts "\n"
        puts "-" * 70
    end
    
    def line_break_space 
        puts "\n"
        puts "\n"
    end

    def chat(content)
        content.each_char {|c|print c; sleep 0.03}
        sleep 1
    end
    # choices
    def options(question)
        puts question
        gets.chomp.downcase
    end
    

    def clear
        system ("cls")
    end
        
    def prompt ()
        print ">".light_:red
    end
