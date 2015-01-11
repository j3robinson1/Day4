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
		MAX_MOVEMENT_FORWARD = 5
		def initialize
			@horses = []
			@my_horse = []
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

		def horse_chosen
			puts "Pick a horse (1-4)"
			@chosen_horse = gets.chomp.to_i
			if @chosen_horse == 1
				@chosen_horse = horses[0]
				horses.delete_at(0)
				@my_horse.push @chosen_horse
			elsif @chosen_horse == 2
				@chosen_horse = horses[1]
				horses.delete_at(1)
				@my_horse.push @chosen_horse
			elsif @chosen_horse == 3
				@chosen_horse = horses[2]
				horses.delete_at(2)
				@my_horse.push @chosen_horse
			elsif @chosen_horse == 4
				@chosen_horse = horses[3]
				horses.delete_at(3)
				@my_horse.push @chosen_horse
			end

		end
		def setup
			self.make_horses
			self.horse_chosen
		end
		def my_horse_win
			winning_horse = @my_horse.max_by {|horse| horse.location.position}
			
		end
		def says_winner
			if my_horse_win
				winning_horse = horses.max_by {|horse| horse.location.position}
				puts "#{winning_horse.name} is the winner!"
			else
				winning_horse = @my_horse.max_by {|horse| horse.location.position}
				puts "#{winning_horse.name} is the winner!"
			end
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
			self.move_my_horse wants_to_cheat
			self.move_horses wants_to_cheat
			self.board
		end
		#move each horse forward random number of spaces
		def move_horses wants_to_cheat = false
			horses.each do |horse|
				location = horse.location
				distance_moved = rand(1..MAX_MOVEMENT_FORWARD)
				location.position += distance_moved
			end
		end
		def move_my_horse wants_to_cheat = false
				@my_horse.each do |horse|
				location = horse.location
				distance_moved = rand(1..MAX_MOVEMENT_FORWARD)
				location.position += distance_moved
			end
		end
		# true if user_input = "cheat" / false
		def user_wants_to_cheat?
			puts "Press Enter to continue"
			continue = gets.chomp
			if continue.downcase == "cheat"
				self.move_my_horse
			end

		end
		def find_finished_horses
			@my_horse.select do |horse|
				horse.finished?
			end
			horses.select do |horse|
				horse.finished?
			end
		end
		def board
			@my_horse.each do |horse|
				name = horse.name
				position = horse.location.position
				tilda = "~" * position
				puts "                                      |"
				puts "#{tilda}#{name}"
				puts "                                      |"
			end
			horses.each do |horse|
				name = horse.name
				position = horse.location.position
				tilda = "~" * position
				puts "                                      |"
				puts "#{tilda}#{name}"
				puts "                                      |"
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
