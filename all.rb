	# makes horses 
	class Horse
		attr_accessor :name, :location
		MAX_POSITION = 30
		def initialize
			@location = Location.new
		end
		def finished?
			@location.position >= MAX_POSITION
		end
	end


	class Race
		attr_accessor :chosen_horse, :horses
		attr_accessor :line1, :line2, :line3, :line4
		MAX_MOVEMENT_FORWARD = 5
		def initialize
			@horses = []
		end
		def make_horses
			horses = []
			horse1 = Horse.new
			horse1.name = "Horse #1"
			horses.push horse1
			horse2 = Horse.new
			horse2.name = "Horse #2"
			horses.push horse2
			horse3 = Horse.new
			horse3.name = "Horse #3"
			horses.push horse3
			horse4 = Horse.new
			horse4.name = "Horse #4"
			horses.push horse4
			self.horses = horses
		end
		def setup
			self.make_horses
			self.horse_chosen
		end
		def says_winner
			winning_horse = horses.max_by {|horse| horse.location.position}
			puts winning_horse.name
		end
		def everything 
			self.setup
			while self.find_finished_horses.empty?
				self.run_race
			end	
			self.says_winner
		end

		def run_race
			wants_to_cheat = user_wants_to_cheat?
			self.move_horses wants_to_cheat
			self.board
		end
		#move each horse forward random number of spaces
		def move_horses wants_to_cheat = false
			horses.each do |horse|
				location = horse.location
				distance_moved = rand(1..MAX_MOVEMENT_FORWARD)
				if wants_to_cheat == true
					distance_moved = distance_moved * 2
				end
				location.position += distance_moved
			end
		end
		# true if user_input = "cheat" / false
		def user_wants_to_cheat?
			puts "Press Enter to continue"
			continue = gets.chomp
			continue.downcase == "cheat"
		end
		def find_finished_horses
			horses.select do |horse|
				horse.finished?
			end
		end
		def board
			horses.each do |horse|
				name = horse.name
				position = horse.location.position
				tilda = "~" * position
				puts "#{tilda}#{name}"
			end
			# @line1 = "#{location.position}#{horses[0].name}"
			# puts @line1
			# puts "-------------------------------------------"
			# @line2 = "#{location.position}#{horses[1].name}"
			# puts @line2
			# puts "-------------------------------------------"
			# @line3 = "#{location.position}#{horses[2].name}"
			# puts @line3
			# puts "-------------------------------------------"
			# @line4 = "#{location.position}#{horses[3].name}"
			# puts @line4
		end
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
		end
		
	end

		


	class Location
		attr_accessor  :position
		def initialize
			@position = 0
		end
	end
new_race = Race.new
new_race.everything




# put_board = Race.new 
# put_board.board Horse.horses
# new_race.horses = [horse1, horse2, horse3, horse4]
# new_race.link_horses_to_locations
# new_race.move_horses
# put_board.board Horse.horses
# p new_race.horse_locations
