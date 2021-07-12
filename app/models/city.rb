class City < ApplicationRecord
  validates :name, presence: true
  validates :state_id, presence: true
  
  belongs_to :state
  has_many :stores
end
