class Game

  GAME_START = 'start'
  GAME_END = 'end'

  def initialize(directory)
    @directory = directory
    @meta = @directory/story.rb
    @stack = []
  end

  def start
    play_story GAME_START
  end

  def end_story
    sleep (1)
    puts "Whould you like to choose another Story?"
    puts ""
    puts "Y/N"
    another_story = gets.chomp.downcase
    if another_story.include? "y"
        load "./play.rb"
    elsif another_story.include? "n"
      puts "Thank You"
      sleep (1)
      system ("clear")
      exit
    else  
      puts "Bye Bye"
      sleep (1)
      system ("clear")
      exit 
      end
    end
    
  
  def play_story(part)
    # Push selection to story stack
    @last_part = @stack.pop
    @stack << part

    story = @directory/part.rb
    puts CLEAR

   
    puts
    puts story['content']
    puts
   

    exit if part == GAME_END

    # navigate to next part of the story

    prompt = TTY::Prompt.new

    if story['choices']
      # prompt user with choices
      next_part = prompt.select("Please select: ") do |menu|
        menu.enum '.'
        story['choices'].each do |choice|
          menu.choice choice[1], choice[0]
        end
      end
    elsif story['end']
      puts
      puts story['end']
      puts
      end_story
    else
      # no choices defined
      next_part = @last_part
      prompt.keypress("Press any key to go back...")
    end

    play_story(next_part)
  end

end
