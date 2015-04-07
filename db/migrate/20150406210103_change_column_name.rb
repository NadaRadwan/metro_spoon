class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :raters, :type, :atype
  end
end
