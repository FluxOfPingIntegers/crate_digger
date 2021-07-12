class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  has_secure_password
  has_many :reviews
  has_many :stores, through: :reviews
  has_many :comments
  has_many :stores, through: :comments

end
