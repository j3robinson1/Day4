class Car
	# # writes new attribute(set)
	# attr_writer :make
	# # read/get attribute(get)
	# attr_reader :make

	# def color= value
	# 	@color = value         (getter)
	# 	@color
	# end

	# def color
	# 	@color                 (setter)
	# end

	# both writer and reader
	attr_accessor :make
	attr_accessor :color
	attr_accessor :model
	attr_accessor :back_seat
	attr_accessor :max_speed
	@@list_of_cars = []
	# set default variables
	# object/instance method
	def initialize
		# p "Hello world"
		self.make = "Ford"
		self.model = "Focus"
		self.color = "white"
		self.back_seat = "3"
		self.max_speed = "80"
		Car.list_of_cars.push(self)
	end

	def display_info 
		# shortcut for pointing to current object creating
		# puts "#{self.make} #{self.model} #{self.color} #{self.back_seat} #{self.max_speed}"


	end
# class variable
# self. makes it aclass method
	def self.diplay_all

	end
	# class method
	def self.list_of_cars
	# creates variable that we can call on the class
	# p self
	@@list_of_cars
		
	end
end

# links to class Car
nicks_car = Car.new
nicks_car.make = "lotus"
nicks_car.model = "Elise"
nicks_car.color = "Lazer Blue"
nicks_car.back_seat = 0
nicks_car.max_speed = 160

# links to class Car
my_car = Car.new
# sets make
my_car.make = "Honda"
my_car.model = "ex"
# sets color
my_car.color = "Black"
my_car.back_seat = "2"
my_car.max_speed = "120"

adams_car = Car.new
# p nicks_car
# # p nicks_car.make
# # p nicks_car.color
# p my_car
# p adams_car
# puts nicks_car.display_info
# puts adams_car.display_info
# puts my_car.display_info
# p Car.list_of_cars

