class Rater < ActiveRecord::Base

  has_many :ratings
  has_many :restaurants, through: :ratings

  has_many :ratingitems
  has_many :menuitems, through: :ratingitems

 	before_save { self.email = email.downcase }
	validates :name, presence: true
	validates :email, presence: true
	validates :atype, presence: true


	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

    has_secure_password
    validates :password, length: { minimum: 4 }

  def Rater.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

end
