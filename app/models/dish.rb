class Dish < ApplicationRecord
    has_many :dish_ingredients
    has_many :ingredients, through: :dish_ingredients
    has_many :dish_bags
    has_many :bags, through: :dish_bags

    def capitalize_each_word
        self.name.split.map { |word| word.capitalize }.join(" ")
    end
end
