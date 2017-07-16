def pizza_order()
	p "How many pizzas do you want:"
	pizza_number = gets.chomp
	pizza_number = pizza_number.to_i
	pizza_number
end

def make_pizza()
	pizza_type = ["pepperoni", "canadian bacon", "sausage", "cheese", "Supreme"]
	crust_type = ["thin crust", "hand tossed", "deep dish"]
	special_topping = ["olives", "anchovies", "onions", "mushrooms", "no special toppings"]
	cost = 10

    number_of_pizzas = pizza_order()
    number_of_pizzas = number_of_pizzas.to_i
    total_cost = (number_of_pizzas * cost)
    total_cost = total_cost.to_s
  
    number_of_pizzas.times do
    	puts "One pizza is  " +  pizza_type.sample + ", " + crust_type.sample + ", " + special_topping.sample
   	end
 	puts "Your total cost is: $" + total_cost
end

make_pizza()
