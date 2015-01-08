require './horse.rb'
require './movement.rb'

class RaceTrack
	attr_accessor :line1, :line2, :line3, :line4
	def board
		@line1 = "#{horses[0]}"
		puts "-------------------------------------------"
		@line2 = "#{horses[1]}"
		puts "-------------------------------------------"
		@line3 = "#{horses[2]}"
		puts "-------------------------------------------"
		@line4 = "#{horses[3]}"
	end
end