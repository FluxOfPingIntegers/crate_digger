class Store < ApplicationRecord
  validates :name, presence: true
  validates :city_id, presence: true
  validates :yelp_id, presence: true, uniqueness: true
  
  belongs_to :city
  has_many :comments
  has_many :users, through: :comments
  has_many :reviews
  has_many :users, through: :reviews

  scope :search_by_yelp_id, -> (id){ where("yelp_id LIKE ?", "%#{id}%") }

end
