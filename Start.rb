#!/usr/bin/env ruby
require "bundler"
Bundler.require(:default)
require_relative './main.rb'
require 'Artii'
require_relative './Stories/3 pigs/three_pigs.rb'

CLEAR = puts "\e[H\e[2J"

puts CLEAR
a = Artii::Base.new :font => 'slant'
puts a.asciify("Welcome  To ").colorize(:green)
puts a.asciify("StoryBooks Advanture").colorize(:green)

prompt = TTY::Prompt.new
"Select a story to advanture:\n ".each_char {|c|print c; sleep 0.05}

sleep 1
selection = prompt.select(" ") do |menu|
  menu.enum '.'
  menu.choice('three pigs', 1)
  menu.choice('Wild of wild', 2)
  menu.choice('hahaha', 3)
  menu.choice('Exit', 4)
 
  case selection
    when 1
      return "Three"
      when 4
        puts exit
  end
end

# Game.new(story_dir).start
