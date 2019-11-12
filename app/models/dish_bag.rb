class DishBag < ApplicationRecord
  belongs_to :dish_id
  belongs_to :bag_id
end
