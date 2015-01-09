require './horse.rb'
require './race_track.rb'
require './movement.rb'
class Race
	attr_accessor :chosen_horse
	
	def horse_chosen
	puts "Pick a horse (1-4)"
	@chosen_horse = gets.chomp
		if @chosen_horse == 1
		@chosen_horse = horse1
		elsif @chosen_horse == 2
		@chosen_horse = horse2
		elsif @chosen_horse == 3
		@chosen_horse = horse3
		elsif @chosen_horse == 4
		@chosen_horse = horse4
		end

	instance = Location.new
		instance.location
end
	end
new_race = Race.new
new_race.horse_chosen