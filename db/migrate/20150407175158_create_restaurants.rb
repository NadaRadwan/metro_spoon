class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :rtype
      t.string :url

      t.timestamps
    end
  end
end
