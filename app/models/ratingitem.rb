class Ratingitem < ActiveRecord::Base
  belongs_to :menuitem
  belongs_to :rater
end
