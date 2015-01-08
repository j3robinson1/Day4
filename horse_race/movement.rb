require './horse.rb'

class Location
	attr_accessor :total
	def initialize
		@total = 0
	end
	def move distance_traveled
		puts "press Enter to move on"
		continue = gets.chomp
		self.distance_traveled = rand(1..5)
		if distance_traveled == 1
			puts "~"
			@total += distance_traveled
		elsif distance_traveled == 2
			puts "~~"
			@total += distance_traveled
		elsif distance_traveled == 3
			puts "~~~"
			@total += distance_traveled
		elsif distance_traveled == 4
			puts "~~~~"
			@total += distance_traveled
		elsif distance_traveled == 5
			puts "~~~~~"
			@total += distance_traveled
		end
			line1 == "#{@total}#{horse1}"
			line2 == "#{@total}#{horse2}"
			line3 == "#{@total}#{horse3}"
			line4 == "#{@total}#{horse4}"
	end
	def cheat
		if continue.downcase = "cheat"
			@total = distance_traveled + distance_traveled
		else
			return move
		end
	end
end