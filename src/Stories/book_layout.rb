#    require "../main.rb"
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
        Adventure.new
    elsif another_story.include? "n"
        quit_app
    else  
        quit_app
    end
end


    #artii style end at the end of the story
    def the_end
        title = Artii::Base.new 
        puts title.asciify("THE   END").red
    end

    def quit_app 
        line_break
        line_break_space
        title = Artii::Base.new 
        showup title.asciify("Thank You").blue
        line_break
        sleep 3
        exit
    end

    #line break
    def line_break
        puts "\n"
        puts "-".green * 70
    end
    
    def line_break_space 
        puts "\n"
        puts "\n"
    end

    #make line like type in
    def chat(content)
        content.each_char {|c|print c; sleep 0.02}
        sleep 0.5
    end

    #game title show up
    def showup(biaoti)
        biaoti.each_char {|l| print l; sleep 0.0009}
        sleep 0.1
    end
    #clear termianl screen
    def clear
        system ("cls")
    end
    
    #setr prompt symbol and color
    def prompt ()
        print ">".blue
    end
    
    # indicate helps
    def helps  
        chat "type " + "q ".red + "or " + "quit: ".red + "back to the main menu or quit"
        
        chat "type " + "start ".blue + "to start you story"
        
    end

    
       