require './horse.rb'
require './movement.rb'
class RaceTrack
	attr_accessor :line1, :line2, :line3, :line4
	def board horses_array
		@line1 = "#{}#{horses_array[0].name}"
		puts @line1
		puts "-------------------------------------------"
		@line2 = "#{}#{horses_array[1].name}"
		puts @line2
		puts "-------------------------------------------"
		@line3 = "#{}#{horses_array[2].name}"
		puts @line3
		puts "-------------------------------------------"
		@line4 = "#{}#{horses_array[3].name}"
		puts @line4
	end
end
put_board = RaceTrack.new 
put_booard.board Horse.horses