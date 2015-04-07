class Restaurant < ActiveRecord::Base
	before_save { self.name = name.downcase }

	validates :name, presence: true, uniqueness: { case_sensitive: false }
	validates :rtype, presence: true
	validates :url, presence: true
end
