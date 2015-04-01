class Guitar < ActiveRecord::Base
  belongs_to :user
  has_many :practice_sessions

end
