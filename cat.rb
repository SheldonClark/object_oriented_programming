class Cat
#new class for instances of cats
	def initialize(name, preferred_food, meal_time)
		@name = name
		@preferred_food = preferred_food
		@meal_time = meal_time
	end

	def eats_at
	#returns when the cat eats at
		"#{@name} eats at #{@meal_time} PM."
	end

	def meow
	#returns everything about the cat
		"My name is #{@name} and I eat #{@preferred_food} at #{@meal_time} PM"
	end
end

garfield = Cat.new(garfield, "lasagna", 12)
sparkles = Cat.new(sparkles, "tuna", 12)

garfield.meow
sparkles.meow
