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

  def full_address
    "#{self.address}, #{self.city.name}, #{self.city.state_abb}, #{self.zip_code}"
  end
end
