class Menuitem < ActiveRecord::Base
  belongs_to :restaurant

  validates :restaurant_id, presence: true

  validates :name, presence: true
  validates :mtype, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :price, presence: true
  
end
