class Location < ActiveRecord::Base
  belongs_to :restaurant
  
  validates :restaurant_id, presence: true

  validates :fopen, presence: true
  validates :manager, presence: true
  validates :phone, presence: true
  validates :postal, presence: true
  validates :address, presence: true
  validates :mon, presence: true
  validates :tue, presence: true
  validates :wed, presence: true
  validates :thurs, presence: true
  validates :fri, presence: true
  validates :sat, presence: true
  validates :sun, presence: true

end
