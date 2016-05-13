require 'pry'

class Mammal
	attr_accessor :gender, :name, :age, :alive

	def initialize(gender, name, age, alive = true)
		@gender = gender
		@name = name
		@age = age
		@alive = alive
	end

	def speak
		raise 'You must implement this in a sub class'
	end

	def increment_age(age = 1)
		@age += age
	end

	def kill
		@alive = false if @alive
	end

	def self.type_of_blood
		puts 'Mammals are warm blooded'
	end
end

matt = Mammal.new("Male", "Human", 28)
puts matt
puts matt.age
matt.increment_age
puts matt.age
puts matt.alive
puts "matt#{@alive}"
matt.kill
puts "matt#{@alive}"

Mammal.type_of_blood
binding.pry
#sub classes

class Human < Mammal
	def initialize(gender, name, age, alive, hair_color)
		super(gender, name, age, alive)
		@hair_color = hair_color
	end

	def speak
		puts 'This is english...'
	end 
end

class Elephant < Mammal
	def initialize(gender, name, age, alive)
		super(gender, name, age, alive)
	end

	def speak
		puts 'PPPFFFTTTT'
	end
end

class Cat < Mammal
	def initialize(gender, name, age, alive)
		super(gender, name, age, alive)
	end

	def speak
		puts 'meow'
	end
end

binding.pry
me = Human.new('Male', 'Matt', '28', true, 'brown')
