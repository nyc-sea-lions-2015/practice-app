class User < ActiveRecord::Base
  has_many :guitars
  has_many :practice_sessions
  has_secure_password
end
