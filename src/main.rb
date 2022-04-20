require_relative './profile.rb'
require_relative "./Stories/book_layout.rb"
require "bundler"
Bundler.require(:default)
require_relative "./Stories/Three pigs/Three_Pigs.rb"
require_relative "./Stories/Breath of The wild/Breath_of_the_wild.rb"
require_relative "./Stories/book_layout.rb"

class Main 
   attr_accessor :ending, :exp, :username
    def initialize

   end

def create_profile(profiles)
    line_break
    chat "You have selected to create a new profile"
    username = get_username()
    hash = load_profiles(profiles)
    until is_valid_username?(username, hash) == true do
        username = get_username()
    end
    profile = Profile.new(username)
    return profile
end

def get_username()
    puts "Please enter a username or type 'quit' to exit:"
    return gets.chomp!
end

def is_valid_username?(username, profiles)
    if profiles.include?(username)
        chat "#{username} is already taken"
        return false
    end
    return true
end

def save_profile(profile, file)
    result = load_profiles(file)
    data = profile.profile_data
    result[profile.username] = data
    wFile = File.open("profiles.json", 'w')
    wFile.write(JSON.pretty_generate(result))
    wFile.close
end

def load_profiles(file)
    read = File.open(file)
    string = read.read
    read.close
    hash = JSON.parse(string)
    return hash
end

def load_profile(username, file)
    hash = load_profiles(file)
    profile = Profile.new(username) 
    return profile
end

def login_check()
    username = get_username()
    if username == 'quit'
        quit_app
    end
    profile = load_profile(username, 'profiles.json')
    return profile
end

def user_summary(profile)
    table = profile.profile_summary
    puts table.render(:ascii, alignments: [:left, :center])
end

def main()
        clear
        line_break  
        chat "Welcome to Stroybooks Adventure "
        @prompt = TTY::Prompt.new
        line_break
        choose1 = @prompt.select("Would you like to Log in or New User?") do |menu|
        menu.choice "Log in"
        menu.choice "New User"
        menu.choice "Exit"
        end
    case choose1
    when "New_User"
        profile = create_profile('profiles.json')
        save_profile(profile, 'profiles.json')
        intro(profile)
    when "Log in"
        profile = login_check()
        intro(profile)
    when "Exit"
       quit_app
    end       
end
    
def intro(profile)
    clear
    a = Artii::Base.new :font => 'slant'
    puts a.asciify("Welcome  To ").green
    puts a.asciify("StoryBooks Adventure").green
    #choose the books from Stories folder
    line_break_space
    sleep 0.5
    
    choose = @prompt.select("Select a story to adventure:\n  ") do |menu|
      menu.enum '.'
      Dir.glob("./Stories/*/*.rb").each do |book_rb|  
        choose = File.basename(book_rb, ".rb")
        menu.choice choose   
      end
      menu.choice "User File"
      menu.choice "Exit"
    end
    
    case choose
        when "Three_Pigs"
            threepigs = ThreePigs.new
            three_ending = threepigs.intro
            ending += three_ending.to_i
            end_story
        when "Breath_of_the_wild"
           username = Breath.new
           username.welcome
        when "User File"
            user_summary(profile)
            sleep 5
            return intro(profile)    
        when "Exit"
        quit_app
    end
end

            
    if ARGV.size == 0
    end
    
   
   

end

play = Main.new
play.main

