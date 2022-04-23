   def end_story #choose exit or back to the main menu
        sleep 1
        line_break
        chat "Whould you like to back to Adventure Books"
        line_break_space
        chat "Y/N"
        line_break_space
        prompt; another_story = gets.chomp.downcase
        if another_story.include? "y"
            Adventure.new
        else  
            quit_app
        end
    end

   
    def you_died # Died sign
        title = Artii::Base.new 
        puts title.asciify("YOU   DIED").red
    end

    def the_end #the end sign
        title = Artii::Base.new 
        puts title.asciify("THE   END").red
    end

    def quit_app #say thank you and exit
        line_break
        line_break_space
        title = Artii::Base.new 
        showup title.asciify("Thank You").blue
        line_break
        sleep 3
        exit
    end

    
    def line_break #line break with ----
        puts "\n"
        puts "-".green * 70
    end
    
    def line_break_space #line break with space
        puts "\n"
        puts "\n"
    end

   
    def chat(content) #make line like type in
        content.each_char {|c|print c; sleep 0.02}
        sleep 0.5
    end

   
    def showup(biaoti)  #game title show up
        biaoti.each_char {|l| print l; sleep 0.0009}
        sleep 0.1
    end
    
    def clear #clear termianl screen
        system ("cls")
    end
    
    
    def prompt () #setr prompt symbol and color
        print ">".blue
    end
    
   
    def helps   # indicate helps
        chat "type " + "q ".red + "or " + "quit: ".red + "back to the main menu or quit"
        
        chat "type " + "start ".blue + "to start you story"
        
    end

    # this is the random death speech wehn you died in game
    DEATH = [
        "You died.",
        "Nice job! You died again!",
        "OMG, seriously?",
        "My 3 Yeat old child is better than you.",
        "Try again!",
        "Gan Ba De"
      ]
      
      #return back to the game start
      def death
        chat DEATH[rand(DEATH.length)]
        line_break_space
        3.downto(1) do |n|
          puts '.'
          sleep n
        end
        chat "A lightening just striked your body.".red
        line_break_space
        chat "And you are transported to where the adventure starts!!".green
            sleep 3
        Breath.new 
    end
    
