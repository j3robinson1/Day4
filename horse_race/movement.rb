require './horse.rb'
class Movement
	@total = 0
	attr_accessor :move
	def initialize
		self.move = rand(1..5)
		if @move = 1
			puts "~"
			total += @move
		elsif @move = 2
			puts "~~"
			total += @move
		elsif @move = 3
			puts "~~~"
			total += @move
		elsif @move = 4
			puts "~~~~"
			total += @move
		elsif @move = 5
			puts "~~~~~"
			total += @move
		end
	end
	def movement
		puts "#{@move}#{horse1}"
		initialize
		puts "#{@move}#{horse2}"
		initialize
		puts "#{@move}#{horse3}"
		initialize
		puts "#{@move}#{horse4}"
	end
end