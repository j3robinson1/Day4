require './horse.rb'
require './movement.rb'

class RaceTrack
	attr_accessor :line1, :line2, :line3, :line4
	def board
		@line1 = "#{@total}#{@horses[0]}"
		puts @line1
		puts "-------------------------------------------"
		@line2 = "#{@total}#{@horses[1]}"
		puts @line2
		puts "-------------------------------------------"
		@line3 = "#{@total}#{@horses[2]}"
		puts @line3
		puts "-------------------------------------------"
		@line4 = "#{@total}#{@horses[3]}"
		puts @line4
	end
end
put_board = RaceTrack.new
put_board.board