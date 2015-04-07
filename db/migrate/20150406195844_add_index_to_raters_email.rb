class AddIndexToRatersEmail < ActiveRecord::Migration
  def change
  	add_index :raters, :email, unique: true
  end
end
