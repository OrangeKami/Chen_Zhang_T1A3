require_relative "../../book_layout.rb"

def ending1
    line_break
    chat "You open the seconde chest!"
    line_break_space
    chat "There is nothing in it, and you find you are here traped for a long long long time".red
    line_break_space
    sleep 2
    you_died
    sleep 2
    end_story
end

def ending2
    line_break
    chat "A lighting go through your body again...".red
    line_break_space
    chat "A Voice: " + "OH~~~~~ I fogot share my screen~~".cyan
    line_break_space
    chat "You wake up!!!!".red
    sleep 2
    line_break
    the_end
    sleep 3
    end_story
end

def ending3
    line_break
    chat "You Saved the Princess".red
    line_break_space
    chat "HAPPY ENDING".red
    line_break
    sleep 2
    the_end
    sleep 3
    end_story
end

def ending4
    line_break
    chat "The door exploded~~~~ ".red
    line_break_space
    sleep 2
    you_died
    sleep 2
    end_story
end