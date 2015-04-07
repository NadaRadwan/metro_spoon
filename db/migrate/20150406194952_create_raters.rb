class CreateRaters < ActiveRecord::Migration
  def change
    create_table :raters do |t|
      t.string :name
      t.string :email
      t.string :type
      t.integer :reputation

      t.timestamps null: false
    end
  end
end
