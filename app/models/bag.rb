class Bag < ApplicationRecord
  belongs_to :user
  has_many :dish_bags
  has_many :dishes, through: :dish_bags

  def dish_prices
    self.dishes.map { |dish| dish.dish_price }
  end

  def net_total_calculation
    sum = dish_prices.reduce(0) { |sum, dish_price| sum + dish_price }
  end
end
