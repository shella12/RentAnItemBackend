class User < ApplicationRecord
  has_many :favoritehouses
  has_secure_password
  validates_presence_of :email, :password
  validates_uniqueness_of :email
end
