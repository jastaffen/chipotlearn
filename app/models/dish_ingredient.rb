class DishIngredient < ApplicationRecord
  belongs_to :ingredient_id
  belongs_to :dish_id
end
