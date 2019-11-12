class CreateDishBags < ActiveRecord::Migration[6.0]
  def change
    create_table :dish_bags do |t|
      t.belongs_to :dish, null: false, foreign_key: true
      t.belongs_to :bag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
