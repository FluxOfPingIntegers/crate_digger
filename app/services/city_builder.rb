class CityBuilder

  def self.create_cities
    State.where(abb: "").take do |state|
      state.cities.build(name: "")
    end
      
  end
end