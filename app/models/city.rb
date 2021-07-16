class City < ApplicationRecord
  validates :name, presence: true
  validates :state_id, presence: true
  
  belongs_to :state
  has_many :stores

  scope :search_zip, -> (zip){where("zip_code_list LIKE ?", "%#{zip},%") }

  def state_abb
    self.state.abb
  end

  def zip_codes
    self.zip_code_list.split(", ")
  end
end
