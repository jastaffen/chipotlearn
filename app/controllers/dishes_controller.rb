class DishesController < ApplicationController
    before_action :ingredients_by_category, only: [:new_burrito, :new_burrito_bowl]
    
    def index
        @dishes = Dish.all
    end

    def new_burrito
        @dish = Dish.find_by(name: "Burrito")
    end

    def new_burrito_bowl
        @dish = Dish.find_by(name: "Burrito Bowl")
    end

    private

    def ingredients_by_category
        @proteins = Ingredient.select_by_category("protein")
        @grains = Ingredient.select_by_category("grain")
        @beans = Ingredient.select_by_category("bean")
        @toppings = Ingredient.select_by_category("topping")
    end
end