#!/usr/bin/ruby
#
user_name = ARGV.first
prompt = '>...'
puts "Hi #{user_name}"
puts "questions coming"
puts "what do you like?"
puts prompt
likes = $stdin.gets.chomp

puts "where do you live"
puts prompt
lives = $stdin.gets.chomp

puts "what computer do you have?", prompt
computer = $stdin.gets.chomp

puts """
alright you like #{likes}. you live in #{lives}. you have a #{computer}
"""
