class AddPasswordDigestToRaters < ActiveRecord::Migration
  def change
    add_column :raters, :password_digest, :string
  end
end
