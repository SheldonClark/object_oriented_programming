class Paperboy
#new class for instances of Paperboy
	def initialize(name, experience, earnings)
		@name = name
		@experience = experience
		@earnings = earnings

	end

	def quota
			@experience / 2 + 50
	end

	def deliver(start_address, end_address)
		@start_address = start_address
		@end_address = end_address
		if num_houses == quota
			@earnings = num_houses * 0.25
		elsif num_houses > quota
			@earnings = (num_houses - quota) * 0.50 + 12.5
		else
			@earnings = (num_houses * 0.25) - 2
		end
		@experience = @experience + num_houses
		puts "earnings: #{@earnings}"
		puts @experience
	end

	def num_houses
		(@end_address - @start_address).abs
	end

	def report
		"I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
	end
end
mike = Paperboy.new(mike, 0, 0)
 mike.deliver(120, 200)
 mike.deliver(200, 120)
 puts mike.report
