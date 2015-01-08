require './horse.rb'
require './race_track.rb'
class Location
	attr_accessor :total
	def initialize
		@total = 0
	end
	def location
		while @total < 30
		puts "press Enter to move on"
		continue = gets.chomp
		distance_traveled = rand(1..5)
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
			@line1 == "#{@total}#{@horses[0]}"
			@line2 == "#{@total}#{@horses[1]}"
			@line3 == "#{@total}#{@horses[2]}"
			@line4 == "#{@total}#{@horses[3]}"
		end
	end
	def cheat
		if continue.downcase = "cheat"
			@total = distance_traveled + distance_traveled
		else
			return location
		end
	end
end