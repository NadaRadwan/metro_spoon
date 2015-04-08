class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :fopen
      t.string :manager
      t.string :phone
      t.string :postal
      t.string :address
      t.string :mon
      t.string :tue
      t.string :wed
      t.string :thurs
      t.string :fri
      t.string :sat
      t.string :sun
      t.references :restaurant, index: true

       t.timestamps null: false
    end
    add_foreign_key(:locations, :restaurants)
    add_index :locations, [:restaurant_id, :created_at]
  end
end
