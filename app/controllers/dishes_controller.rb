class DishesController < ApplicationController
    before_action :ingredients_by_category, only: [:new_burrito, :new_burrito_bowl]
    
    def index
        @dishes = Dish.all
    end

    def show
    end

    def new_burrito
        @dish = Dish.new(name: "Burrito", dish_price: 0, description: "Flour Tortilla With Your Choice of Meat, Sofritos, Rice, Beans, Or Fajita Veggies, Queso, Salsa, Guacamole, And Sour Cream, or Cheese, and Romaine Lettuce.", image_url: "order/burrito.png")
    end

    def new_burrito_bowl
        @dish = Dish.find_by(name: "Burrito Bowl")
    end

    def create
    end

    private

    def ingredients_by_category
        @proteins = Ingredient.select_by_category("protein")
        @grains = Ingredient.select_by_category("grain")
        @beans = Ingredient.select_by_category("bean")
        @toppings = Ingredient.select_by_category("topping")
    end
end