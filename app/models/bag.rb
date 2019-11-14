class Bag < ApplicationRecord
  belongs_to :user
  has_many :dish_bags
  has_many :dishes, through: :dish_bags
end
