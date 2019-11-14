class DishIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :dish
  # validate :protein_required

  # def protein_required
  #   protein_arr = []
  #   Ingredient.all.each { |ingredient| protein_arr << ingredient.id if ingredient.category == "protein" }
  #   if !protein_arr.include?(self.ingredient_id)
  #     errors.add("You must have a protein")
  #   end
  # end
end
