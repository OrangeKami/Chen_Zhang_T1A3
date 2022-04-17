#!/usr/bin/env ruby
require "bundler"
Bundler.require(:default)
require_relative './main.rb'
require 'Artii'

CLEAR = puts "\e[H\e[2J"

puts CLEAR
a = Artii::Base.new :font => 'slant'
puts a.asciify("Welcome  To ").colorize(:green)
puts a.asciify("StoryBooks Advanture").colorize(:green)

prompt = TTY::Prompt.new
"Select a story to advanture:\n ".each_char {|c|print c; sleep 0.05}

sleep 1
story_dir = prompt.select(" ") do |menu|
  menu.enum '.'
  # Dir.glob("stories/*/story.rb").each do |story_rb|
  #   story_dir = File.dirname story_rb
  #   menu.choice story_meta["#{@title}"], story_dir
  # end
  menu.choice "three pigs"
  menu.choice "Wild of wild"
  menu.choice "hahaha"
end

Game.new(story_dir).start
