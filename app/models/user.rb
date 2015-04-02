class User < ActiveRecord::Base
  has_many :guitars
  has_many :practice_sessions

  validates_presence_of :name    ## Add validations to model (Already in DB - Yay!)
  validates_uniqueness_of :name  ## Add validations to model (Already in DB - Yay!)

  has_secure_password
end
