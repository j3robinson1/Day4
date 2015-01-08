
class Horses
	attr_accessor :name, :horses
	def racers
	horse1 = Horse.new
	horse1.name = "Horse #1"
	horse2 = Horse.new
	horse2.name = "Horse #2"
	horse3 = Horse.new
	horse3.name = "Horse #3"
	horse4 = Horse.new
	horse4.name = "Horse #4"
	self.horses =[horse1, horse2, horse3, horse4]
	end
end