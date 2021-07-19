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

  def parse_hours=(hours)
    store_hours = []
    hours.each do |day_hash|
      case day_hash["day"]
      when 0
        day_hash["day"] = "Monday"
      when 1
        day_hash["day"] = "Tuesday"
      when 2
        day_hash["day"] = "Wednesday"
      when 3
        day_hash["day"] = "Thursday"
      when 4
        day_hash["day"] = "Friday"
      when 5
        day_hash["day"] = "Saturday"
      when 6
        day_hash["day"] = "Sunday"
      end
      day_hash["start"].insert(-3, ":")
      day_hash["end"].insert(-3, ":")
      store_hours << "#{day_hash["day"]} - #{day_hash["start"]} to #{day_hash["end"]}"
    end
    self.update(hours: store_hours.join(";"))
  end

  def full_hours
    if !self.hours.nil?
      self.hours.split(";")
    else
      ["Hours are unlisted"]
    end
  end
end
