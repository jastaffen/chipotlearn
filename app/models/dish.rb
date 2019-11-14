class Dish < ApplicationRecord
    has_many :dish_ingredients, dependent: :destroy
    has_many :ingredients, through: :dish_ingredients
    has_many :dish_bags, dependent: :destroy
    has_many :bags, through: :dish_bags


    def capitalize_each_word
        self.name.split.map { |word| word.capitalize }.join(" ")
    end

    def self.create_dish_ingredients(integer, hash)
        # byebug
        hash[:ingredient].each do |key, value|
            if key == "toppings"
                hash[:ingredient][key].each do |topping_name, topping_value|
                  test =  DishIngredient.create(ingredient_id: topping_value.to_i, dish_id: integer)
                end
            else
                DishIngredient.create(ingredient_id: value.to_i, dish_id: integer)   
            end
        end
    end

    def total_for_dish
        price_arr = self.ingredients.map { |ingredient| ingredient.price }
        self.dish_price = price_arr.reduce(0) {|sum, price| sum + price }
    end
    
end
