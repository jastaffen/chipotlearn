class Ingredient < ApplicationRecord
    has_many :dish_ingredients
    has_many :dishes, through: :dish_ingredients

    def self.select_by_category(category)
        self.all.select { |ingredient| ingredient.category == category }
    end
end
