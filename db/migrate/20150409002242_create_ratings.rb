class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :price
      t.integer :food
      t.integer :mood
      t.integer :staff
      t.text :comment
      t.references :restaurant, index: true
      t.references :rater, index: true

      t.timestamps null: false
    end
    add_foreign_key :ratings, :restaurants
    add_foreign_key :ratings, :raters
    add_index :ratings, [:restaurant_id, :rater_id]
  end
end
