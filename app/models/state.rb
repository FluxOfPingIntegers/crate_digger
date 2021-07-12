class State < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :abb, uniqueness: true, presence: true

  has_many :cities

end
