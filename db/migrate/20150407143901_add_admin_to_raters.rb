class AddAdminToRaters < ActiveRecord::Migration
  def change
    add_column :raters, :admin, :boolean, default: false
  end
end
