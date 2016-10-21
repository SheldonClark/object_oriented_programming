class Rover

	def initialize#(name)
			#@name = name
		# puts "input x coordinate:"
		# @x_coordinate = gets.chomp.to_i
		# puts "input y coordinate:"
		# @y_coordinate = gets.chomp.to_i
		# puts "input direction in degrees:"
		# @direction = gets.chomp.to_i
	end
	#new thing
	def user_input
		puts "Input maximum x and y of grid:"
			grid_position = gets.split
		@x_maximum = grid_position[0].to_i
		@y_maximum = grid_position[1].to_i
	end

	def move
		if @y_coordinate < (@y_maximum - 1) || @x_coordinate < (@x_maximum - 1)
			if @direction == 90
				@y_coordinate += 1

			elsif @direction == 270
				@y_coordinate -= 1

			elsif @direction == 0
				@x_coordinate += 1

			elsif @direction == 180
				@x_coordinate -= 1
			else
				puts "Not a valid direction!!!"
			end
		else
			puts "You cannot move that way!"
		end
	end


#end of new thing
	# def move
	# 	if @direction == 90
	# 		@y_coordinate += 1
	#
	# 	elsif @direction == 270
	# 		@y_coordinate -= 1
	#
	# 	elsif @direction == 0
	# 		@x_coordinate += 1
	#
	# 	elsif @direction == 180
	# 		@x_coordinate -= 1
	# 	else
	# 		puts "Not a valid direction!!!"
	# 	end
	# end

	def turn(degrees_to_turn)

		if degrees_to_turn > 0
			if @direction == 270
				@direction = 0
			else
				@direction += degrees_to_turn
			end
		else
			if @direction == 0
				@direction = 270
			else
				@direction += degrees_to_turn
			end
		end
	end

	def read_instruction
		puts "input start position in format"
		#get start position from user input
			start_position = gets.split

			@x_coordinate = start_position[0].to_i
			@y_coordinate = start_position[1].to_i
			@direction = start_position[2].to_i

			if (@x_coordinate > @x_maximum)||(@y_coordinate > @y_maximum)
				puts "You cannot do that!"
				read_instruction
			else
				move_sequence
				puts "position #{start_position}"
				puts "x coordinate is #{@x_coordinate} y is #{@y_coordinate} and direction is #{@direction}"
			end

		#puts "input grid size in format x y:"
		#	@grid_size = gets.chomp
		#puts "input start position in format x y N:"
			# position = gets.chomp.upcase.to_a
			#   position.each do |x|
			#     if x.is_a? Integer
			#       @x_coordinate = x
			#     elsif x == ("N"||"S"||"E"||"W")
		end
		def move_sequence
				puts "input move/turn sequence:"
				#get move sequence from user input then perform sequence on rover
				sequence = gets.chomp.upcase
				sequence.each_char do |x|
					if x == "L"
						turn(90)
					elsif x == "R"
						turn(-90)
					elsif x == "M"
						move
					else
						puts "Not a valid sequence!!!"
					end
				end
			end

	 def print_direction_coordinates
		 "rover is facing #{@direction} degrees and y coordinate is #{@y_coordinate}, x coordinate is #{@x_coordinate}."
	 end


end


def which_rover
	#puts "Input instru"
		answer = gets.chomp
		if answer == "rover1"
			rover1 = Rover.new#(rover1)
			rover1.user_input
			rover1.read_instruction
			puts rover1.print_direction_coordinates

		elsif answer == "rover2"
				rover2 = Rover.new#(rover2)
				rover2.user_input
				rover2.read_instruction
				 rover2.print_direction_coordinates
		else
		end
end

puts "Initiate rover1 or rover2?"
which_rover


puts "Initiate rover1 or rover2?"
which_rover



	#puts "input instructions for rover2"
	#puts "Start rover 2? Y/N"
	#answer = gets.chomp



# class plateau
# 	def initialize
# 		@maximum = maximum
# 	end
