class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.float :dish_price
      t.string :description
      t.string :image_url
      t.timestamps
    end
  end
end
