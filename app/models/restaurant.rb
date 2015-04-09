class Restaurant < ActiveRecord::Base
	has_many :locations, dependent: :destroy
	has_many :menuitems, dependent: :destroy

	has_many :ratings, dependent: :destroy
	has_many :raters, through: :ratings

	before_save { self.name = name.downcase }

	validates :name, presence: true, uniqueness: { case_sensitive: false }
	validates :rtype, presence: true
	validates :url, presence: true
end
