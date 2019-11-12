class DishesController < ApplicationController
    def index
        @dishes = Dish.all
    end

    def new_burrito
        @dish = Dish.new(name: "burrito")
        @proteins = Ingredient.select_by_category("protein")
        @grains = Ingredient.select_by_category("grain")
        @beans = Ingredient.select_by_category("bean")
        @toppings = Ingredient.select_by_category("topping")
    end
end