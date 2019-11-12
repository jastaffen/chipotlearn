class CreateBags < ActiveRecord::Migration[6.0]
  def change
    create_table :bags do |t|
      t.integer :net_total
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
