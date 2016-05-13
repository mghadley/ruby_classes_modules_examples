require 'pry'
require 'babbler'

puts 'YAY Friday!'

def keep_coding
  puts 'Pop question: Are you going to keep coding over the weekend? (yes / no)'
  input = gets.strip.downcase

  if input == 'yes'
    puts 'Good answer!'
    puts Babbler.babble
  else
    puts 'You serious, bro? Do you even code?'
    keep_coding
  end
end

keep_coding
