# gives us access to car.rb
require './car.rb'

# my_car = Car.new
# p my_car.display_info

class Inventory
	attr_accessor :car_data


	def initialize
		self.car_data = []
	end

	def add_car *car_list
		car_list.each do |car|
		new_car = Car.new
		new_car.make = car[:make]
		new_car.color = car[:color]
		new_car.model = car[:model]
		new_car.back_seat = car[:back_seat]
		new_car.max_speed = car[:max_speed]
		new_car.vin_number = car[:vin_number]
		self.car_data.push(new_car)
	end

	def remove_car vin_number
		self.car_data.delete_if do |car|
			car.vin_number == vin_number
		end
	end
end
def populate_cars
	puts "populate your car data"
	hash = {}
	keep populating = true
	while keep_populating = true
	puts "make:"
	hash[:make] = gets.chomp
	puts "model:"
	hash[:model] = gets.chomp
	puts "back_seat"
	hash[:back_seat] = gets.chomp
	puts "max_speed"
	hash[:max_speed] = gets.chomp
	puts "vin_number"
	hash[:vin_number] = gets.chomp
	add another?
	ansewr = gets.chomp
	if answer -- 'n'
		keep_populating = false
	end
end
end		


zach_inventory = Inventory.new

car1 = {
	make: "Porsche",
	color: "Midnight Blue",
	model: "911 Turbo",
	back_seat: 0,
	max_speed: 200,
	vin_number: "123"

}
car2 = {
	make: "removed",
	color: "Midnight Blue",
	model: "911 Turbo",
	back_seat: 0,
	max_speed: 200,
	vin_number: "456"

}
car3 = {
	make: "blah",
	color: "Midnight Blue",
	model: "911 Turbo",
	back_seat: 0,
	max_speed: 200,
	vin_number: "789"

}car

zach_inventory.add_car(car1, car2, car3)
zach_inventory.remove_car("456")

p zach_inventory