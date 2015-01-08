require './horse.rb'
require './race_track.rb'
require './movement.rb'
puts "Pick a horse (1-4)"
chosen_horse = gets.chomp
if chosen_horse = 1
	chosen_horse = horse1
elsif chosen_horse = 2
	chosen_horse = horse2
elsif chosen_horse = 3
	chosen_horse = horse3
elsif chosen_horse = 4
	chosen_horse = horse4
end
class Race
def win
	if @total = 30
		puts "Winner"
	end
end