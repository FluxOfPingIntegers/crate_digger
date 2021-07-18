class State < ApplicationRecord
  validates :name, presence: true
  validates :abb, uniqueness: true, presence: true

  has_many :cities

  def self.first_city_pop_for(abb)
    state = State.find_by(abb: abb)
    city = state.cities.first
    city.zip_codes.each{|zip| YelpApi.search_by_zip(zip)}
  end
end
