class CreateRatingitems < ActiveRecord::Migration
  def change
    create_table :ratingitems do |t|
      t.integer :rate
      t.text :comment
      t.references :menuitem, index: true
      t.references :rater, index: true

      t.timestamps null: false
    end
    add_foreign_key :ratingitems, :menuitems
    add_foreign_key :ratingitems, :raters
    add_index :ratingitems, [:menuitem_id, :rater_id]
  end
end
