class Store < ApplicationRecord
  validates :name, presence: true
  validates :city_id, presence: true
  
  belongs_to :city
  has_many :comments
  has_many :users, through: :comments
  has_many :reviews
  has_many :users, through: :reviews

  scope :exists_from_yelp?, -> { where("yelp_id LIKE ?", "%#{id}%").present? }
end
