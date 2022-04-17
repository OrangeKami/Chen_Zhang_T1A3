class Story

    Story_Start = "start"
    Story_ends = "end"

   def initialize(directory)
    @directory = directory
    @meta = RUBY.load.file("#{@directory}/story.rb")
    @stack = []
   end
      
   def start
    play_story Story_Start
    end

end
   
      