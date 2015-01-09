
class Horse
	attr_accessor :name 
	@@horses = []

	def self.horses=(input)
		@@horses.push(input)

	end
	def self.horses
		@@horses
	end
end

	horse1 = Horse.new
	horse1.name = "Horse #1"
	Horse.horses = horse1
	horse2 = Horse.new
	horse2.name = "Horse #2"
	Horse.horses = horse2
	horse3 = Horse.new
	horse3.name = "Horse #3"
	Horse.horses = horse3
	horse4 = Horse.new
	horse4.name = "Horse #4"
	Horse.horses = horse4