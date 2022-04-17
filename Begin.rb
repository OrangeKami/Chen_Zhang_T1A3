#bundler and gem require
#!/usr/bin/env ruby
require "bundler"
Bundler.require(:default)
require "./main.rb"
# Title here
puts "\e[H\e[2J"
# a = Artii::Base.new:font => 'slant'
# puts a.asciify('Welcome to Stroybooks').colorize(:light_blue)
puts "Welcome to Stroybooks Advanture"#.colorize(:light_blue)

prompt = TTY::Prompt.new

story_dir = prompt.select("Select a stroy book to expole: ".each_char {|c| putc c; sleep 0.05}) do |menu|
    # menu.enum "."
    Dir.glob("Stories/*/story.rb").each do |story_rb|
        story_dir = File.dirname story_rb
        story_meta = RUBY.load_file story_rb
        menu.choice story_meta["title"], story_dir
    end
end

Story.new(story_dir).start
