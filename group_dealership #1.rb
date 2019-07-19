def date
  current_time = Time.new
  current_time.strftime("%D")
end

def ilisting_price(make, model, price="Ask for price")
   "#{make.capitalize} #{model.capitalize} Price: #{price}"
end

text= " Welcome to European Imports!!! "
puts text.center(80, '$')
puts "How much can you spend today?"
budget = gets.chomp

puts "Your budget is $#{budget.to_i}."

puts "Here is our inventory listing as of #{date}:"
puts ilisting_price("alfa romeo", "stelvio", "$60,000")
puts ilisting_price("maserati", "ghibli", "$75,000")
puts ilisting_price("lamborghini", "aventador")
puts ilisting_price("ferrari", "812 superfast")

#THursday July 18

class Cars

  attr_accessor :year, :make, :model, :price, :color
  def initialize(year, make, model, price, color)
      @year = year
      @make = make
      @model = model
      @price = price
      @color = color
  end

  def to_s
    "#{@color} #{@year} #{@make} #{@model}: $#{@price}."
  end

end



class Customer

  attr_accessor :budget, :make, :model, :year, :color
  def initialize(budget, make="", model="", year="", color="")
      @budget = budget
      @make = make
      @model = model
      @year = year
      @color = color
  end

  def to_s
    "Customer can spend $#{@budget}. They are looking for a #{@color} #{@year} #{@make} #{@model}."
  end
end

class Inventory



end

car1 = Cars.new(2014, "Toyota", "Rav4", 29000, "Red")
car2 = Cars.new(2019, "Honda", "Civic", 24000, "Blue")
car3 = Cars.new(2019, "alfa romeo", "stelvio", 60000)
car4 = Cars.new(2019, "maserati", "ghibli", 75000, "Green")
car5 = Cars.new(2019, "lamborghini", "aventador", 90000, "Black")
car6 = Cars.new(2019, "ferrari", "812 superfast", 150000, "White")
customer1 = Customer.new(10000, "Ford", "Ranger", 1984, "White")



def ilisting_price(make, model, price="Ask for price")
   "#{make.capitalize} #{model.capitalize} Price: #{price}"
end

text= " Welcome to European Imports!!! "
puts text.center(80, '$')
puts "How much can you spend today?"
budget = gets.chomp

puts "Your budget is $#{budget.to_i}."

prices = [100, 1000, 10000, 100000, 1000000]
cars = ["Nothing", "A ride home", "Our tow truck", "Jaguar", "Lamborghini"]

loop_var = 0
while budget >= prices[loop_var]
    puts "-#{cars[loop_var]}, $#{prices[loop_var]}\n"
    loop_var += 1
end
