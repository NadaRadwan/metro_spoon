class CreateMenuitems < ActiveRecord::Migration
  def change
    create_table :menuitems do |t|
      t.string :name
      t.string :mtype
      t.string :category
      t.text :description
      t.decimal :price
      t.references :restaurant, index: true

      t.timestamps null: false
    end
    add_foreign_key :menuitems, :restaurants
    add_index :menuitems, [:restaurant_id, :created_at]
  end
end
