require './horse.rb'
require './race_track.rb'
class Location
	attr_accessor :finished, :continue
		# @@total = []
		@finished = false
	# def	self.movement=(input)
	# 	@@total.push(input)
	# end
	# def self.movement
	# 	@@total
	# end

	def win
		if @total == 30
		puts "Winner"
		self.finished == true
		end
	end
	def location
		@@total=0
		until win
		puts "press Enter to move on"
		@continue = gets.chomp
		distance_traveled = rand(1..5)
				if distance_traveled == 1
					puts "~"
					@@total += distance_traveled
				elsif distance_traveled == 2
					puts "~~"
					@@total += distance_traveled
				elsif distance_traveled == 3
					puts "~~~"
					@@total += distance_traveled
				elsif distance_traveled == 4
					puts "~~~~"
					@@total += distance_traveled
				elsif distance_traveled == 5
					puts "~~~~~"
					@@total += distance_traveled
				end
			@line1 = "#{@@total}#{horses_array[0].name}"
			@line2 = "#{@@total}#{horses_array[1].name}"
			@line3 = "#{@@total}#{horses_array[2].name}"
			@line4 = "#{@@total}#{horses_array[3].name}"
		end
	end
	def cheat
		if @continue == "cheat"
			@@total += distance_traveled
			return location
		end
	end
end

