class State < ApplicationRecord
  validates :name, presence: true
  validates :abb, uniqueness: true, presence: true

  has_many :cities

end
