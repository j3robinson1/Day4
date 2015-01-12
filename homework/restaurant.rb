class Menu
	attr_accessor :name, :price
	def initialize
		self.price = Order.new
	end
end
class Order
	attr_accessor :total
	def intialize
		self.total = 0
	end
end
class Dine
	attr_accessor :chosen_meal, :meals
	def initialize
		self.meals = []
		@my_meals = []
	end
	def make_meals
		meals = []
		meal1 = Menu.new
		meal1.name = "Pasta"
		meal1.price = 9
		meals.push meal1
		meal2 = Menu.new
		meal2.name = "Hero"
		meal2.price = 10
		meals.push meal2
		meal3 = Menu.new
		meal3.name = "Steak"
		meal3.price = 12
		meals.push meal3
		meal4 = Menu.new
		meal4.name = "Salad"
		meal4.price = 5
		meals.push meal4
		self.meals = meals
		self.list_menu
	end
	def list_menu

		meals.each do |meal|
			name = meal.name
			price = meal.price
			puts "#{name} $#{price}"
		end
	end
	def meal_chosen
		puts "What would you like to order?"
		@chosen_meal = gets.chomp.downcase.capitalize
		if @chosen_meal == "Pasta"
			@chosen_meal = meals[0]
			@my_meals.push @chosen_meal
		elsif @chosen_meal == "Hero"
			@chosen_meal = meals[1]
			@my_meals.push @chosen_meal
		elsif @chosen_meal == "Steak"
			@chosen_meal = meals[2]
			@my_meals.push @chosen_meal
		elsif @chosen_meal == "Salad"
			@chosen_meal = meals[3]
			@my_meals.push @chosen_meal
		end
		self.ask_for_check?
	end
	def receipt
		@my_meals.each do |meal|
			name = meal.name
			price = meal.price
			puts "You ate #{name} for $#{price}"
		end
	end
	def find_table
		self.make_meals
		self.meal_chosen
	end
	def ask_for_check?
		puts "Would you like the check?(y/n)"
		@answer = gets.chomp
		if @answer == "y"
			@answer = true
		else
			@answer = false
		end
	end
	def dinner
		self.find_table
		@answer = false
		while @answer == false
			self.meal_chosen
		end
		self.receipt
	end
end
goto_dinner = Dine.new
goto_dinner.dinner
















