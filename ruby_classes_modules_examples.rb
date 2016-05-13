require 'pry'

class Person
	attr_accessor :first_name, :last_name, :age, :gender

	# def initialize(first_name = nil, last_name = nil, age = nil, gender = nil)
	# 	@first_name = first_name
	# 	@last_name = last_name
	# 	@age = age
	# 	@gender = gender
	# end

	def initialize
		@first_name = gets.strip
		@last_name = gets.strip
		@age = gets.strip.to_i
		@gender = gets.strip
	end
end

person1 = Person.new
binding.pry
puts person1.first_name
puts person1.last_name
puts person1.age
puts person1.gender

person2 = Person.new
puts person2.first_name

# require 'babbler'

# puts 'YAY Friday!'

# def keep_coding
#   puts 'Pop question: Are you going to keep coding over the weekend? (yes / no)'
#   input = gets.strip.downcase

#   if input == 'yes'
#     puts 'Good answer!'
#     puts Babbler.babble
#   else
#     puts 'You serious, bro? Do you even code?'
#     keep_coding
#   end
# end

# keep_coding
