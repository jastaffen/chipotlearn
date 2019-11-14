# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Ingredient.destroy_all
Dish.destroy_all


carnitas = Ingredient.create(name: "Carnitas", price: 9.45, category: "protein")
chicken = Ingredient.create(name: "Chicken", price: 8.95, category: "protein")
steak = Ingredient.create(name: "Steak", price: 9.95, category: "protein")
carne_asada = Ingredient.create(name: "Carne Asada", price: 10.45, category: "protein")
barbacoa = Ingredient.create(name: "Barbacoa", price: 9.95, category: "protein")
sofritas = Ingredient.create(name: "Sofritas", price: 8.95, category: "protein")
veggie = Ingredient.create(name: "Veggie", price: 8.95, category: "protein")

white_rice = Ingredient.create(name: "White Rice", price: 0, category: "grain")
brown_rice = Ingredient.create(name: "Brown Rice", price: 0, category: "grain")
no_rice = Ingredient.create(name: "No Rice", price: 0, category: "grain")

pinto_bean = Ingredient.create(name: "Pinto Bean", price: 0, category: "bean")
black_bean = Ingredient.create(name: "Black Bean", price: 0, category: "bean")
no_beans = Ingredient.create(name: "No Beans", price: 0, category: "bean")

queso = Ingredient.create(name: "Queso", price: 1.40, category: "toppings")
guac = Ingredient.create(name: "Guacamole", price: 3.45, category: "toppings")
salsa = Ingredient.create(name: "Fresh Tomato Salsa", price: 0, category: "toppings")
corn = Ingredient.create(name: "Roasted Corn-Chili Salsa", price: 0, category: "toppings")
verdes = Ingredient.create(name: "Tomatillo-Green Chili Salsa", price: 0, category: "toppings")
hot = Ingredient.create(name: "Tomatillo-Red Chili Salsa", price: 0, category: "toppings")
sour_cream = Ingredient.create(name: "Sour Cream", price: 0, category: "toppings")
fajita_veggies = Ingredient.create(name: "Fajita Veggies", price: 0, category: "toppings")
cheese = Ingredient.create(name: "Cheese", price: 0, category: "toppings")
romaine = Ingredient.create(name: "Romaine Lettuce", price: 0, category: "toppings")

# burrito = Dish.create(name: "Burrito", dish_price: 0, description: "Flour Tortilla With Your Choice of Meat, Sofritos, Rice, Beans, Or Fajita Veggies, Queso, Salsa, Guacamole, And Sour Cream, or Cheese, and Romaine Lettuce.", image_url: "order/burrito.png")
# burrito_bowl = Dish.create(name: "Burrito Bowl", dish_price: 0, description: "Served In A Bowl With Your Choice of Meat, Sofritos, Rice, Beans, Or Fajita Veggies, Queso, Salsa, Guacamole, And Sour Cream, or Cheese, and Romaine Lettuce.", image_url: "order/burrito-bowl.png")
# Taco = Dish.create(name: "Taco", dish_price: 0, description: "Your Choice Of Taco Filled With Meat or Sofritos, Beans, Or Fajita Veggies, Queso, Salsa, Guacamole, And Sour Cream, or Cheese, and Romaine Lettuce.", image_url: " ")
# Salad = Dish.create(name: "Salad", dish_price: 0, description: "Chopped Romain Lettuce With Your Choice Of Meat Or Sofritas, Beans, Queso, Salsa, Guacamole, Sour Cream Or Cheese, With Freshly Made Chipotle-Honey Vinaigrette.", image_url: " ")



#di1 = DishIngredient.create(ingredient_id: Ingredient.first.id, dish_id: Dish.first.id)