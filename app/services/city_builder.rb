class CityBuilder

  def self.create_cities
    
    State.where(abb: "AL").take do |state|
      state.cities.find_or_create_by(name: "Montgomery")
      state.cities.find_or_create_by(name: "Bermingham")
    end
    State.where(abb: "AK").take do |state|
      state.cities.find_or_create_by(name: "Juneau")
      state.cities.find_or_create_by(name: "Anchorage")
    end
    State.where(abb: "AZ").take do |state|
      state.cities.find_or_create_by(name: "Phoenix")
      state.cities.find_or_create_by(name: "Tucson")
      state.cities.find_or_create_by(name: "Mesa")
    end
    State.where(abb: "AR").take do |state|
      state.cities.find_or_create_by(name: "Little Rock")
    end
    State.where(abb: "CA").take do |state|
      state.cities.find_or_create_by(name: "Sacramento")
      state.cities.find_or_create_by(name: "Los Angeles")
      state.cities.find_or_create_by(name: "San Diego")
      state.cities.find_or_create_by(name: "San Jose")
      state.cities.find_or_create_by(name: "San Francisco")
      state.cities.find_or_create_by(name: "Fresno")
      state.cities.find_or_create_by(name: "Sacramento")
      state.cities.find_or_create_by(name: "Long Beach")
      state.cities.find_or_create_by(name: "Oakland")
    end
    State.where(abb: "CO").take do |state|
      state.cities.find_or_create_by(name: "Denver")
      state.cities.find_or_create_by(name: "Colorado Springs")
    end
    State.where(abb: "CT").take do |state|
      state.cities.find_or_create_by(name: "Hartford")
      state.cities.find_or_create_by(name: "Bridgeport")
    end
    State.where(abb: "DE").take do |state|
      state.cities.find_or_create_by(name: "Dover")
    end
    State.where(abb: "FL").take do |state|
      state.cities.find_or_create_by(name: "Tallahassee")
      state.cities.find_or_create_by(name: "Miami")
      state.cities.find_or_create_by(name: "Tampa")
      state.cities.find_or_create_by(name: "Orlando")
    end
    State.where(abb: "GA").take do |state|
      state.cities.find_or_create_by(name: "Atlanta")
    end
    State.where(abb: "HI").take do |state|
      state.cities.find_or_create_by(name: "Honolulu")
    end
    State.where(abb: "ID").take do |state|
      state.cities.find_or_create_by(name: "Boise")
    end
    State.where(abb: "IL").take do |state|
      state.cities.find_or_create_by(name: "Springfield")
      state.cities.find_or_create_by(name: "Chicago")
      state.cities.find_or_create_by(name: "Aurora")
    end
    State.where(abb: "IN").take do |state|
      state.cities.find_or_create_by(name: "Indianapolis")
      state.cities.find_or_create_by(name: "Fort Wayne")
    end
    State.where(abb: "IA").take do |state|
      state.cities.find_or_create_by(name: "Des Moines")
    end
    State.where(abb: "KS").take do |state|
      state.cities.find_or_create_by(name: "Topeka")
      state.cities.find_or_create_by(name: "Wichita")
      state.cities.find_or_create_by(name: "Kansas City")
    end
    State.where(abb: "KY").take do |state|
      state.cities.find_or_create_by(name: "Frankfort")
      state.cities.find_or_create_by(name: "Louisville")
    end
    State.where(abb: "LA").take do |state|
      state.cities.find_or_create_by(name: "Baton Rouge")
      state.cities.find_or_create_by(name: "New Orleans")
    end
    State.where(abb: "ME").take do |state|
      state.cities.find_or_create_by(name: "Augusta")
      state.cities.find_or_create_by(name: "Portland")
    end
    State.where(abb: "MD").take do |state|
      state.cities.find_or_create_by(name: "Annapolis")
      state.cities.find_or_create_by(name: "Baltimore")
    end
    State.where(abb: "MA").take do |state|
      state.cities.find_or_create_by(name: "Boston")
      state.cities.find_or_create_by(name: "Worcester")
      state.cities.find_or_create_by(name: "Springfield")
    end
    State.where(abb: "MI").take do |state|
      state.cities.find_or_create_by(name: "Lansing")
      state.cities.find_or_create_by(name: "Detroit")
    end
    State.where(abb: "MN").take do |state|
      state.cities.find_or_create_by(name: "Saint Paul")
      state.cities.find_or_create_by(name: "Minneapolis")
    end
    State.where(abb: "MS").take do |state|
      state.cities.find_or_create_by(name: "Jackson")
    end
    State.where(abb: "MO").take do |state|
      state.cities.find_or_create_by(name: "Jefferson City")
      state.cities.find_or_create_by(name: "Kansas City")
      state.cities.find_or_create_by(name: "Saint Louis")
    end
    State.where(abb: "MT").take do |state|
      state.cities.find_or_create_by(name: "Helena")
      state.cities.find_or_create_by(name: "Bellings")
    end
    State.where(abb: "NE").take do |state|
      state.cities.find_or_create_by(name: "Lincoln")
      state.cities.find_or_create_by(name: "Omaha")
    end
    State.where(abb: "NV").take do |state|
      state.cities.find_or_create_by(name: "Carson City")
      state.cities.find_or_create_by(name: "Las Vegas")
      state.cities.find_or_create_by(name: "Henderson")
      state.cities.find_or_create_by(name: "Reno")
      state.cities.find_or_create_by(name: "North Las Vegas")
    end
    State.where(abb: "NH").take do |state|
      state.cities.find_or_create_by(name: "Concord")
      state.cities.find_or_create_by(name: "Manchester")
    end
    State.where(abb: "NJ").take do |state|
      state.cities.find_or_create_by(name: "Trenton")
      state.cities.find_or_create_by(name: "Newark")
      state.cities.find_or_create_by(name: "Jersey City")
    end
    State.where(abb: "NM").take do |state|
      state.cities.find_or_create_by(name: "Santa Fe")
      state.cities.find_or_create_by(name: "Albuquerque")
    end
    State.where(abb: "NY").take do |state|
      state.cities.find_or_create_by(name: "Albany")
      state.cities.find_or_create_by(name: "Buffalo")
      state.cities.find_or_create_by(name: "New York City")
      state.cities.find_or_create_by(name: "Rochester")
      state.cities.find_or_create_by(name: "Yonkers")
      state.cities.find_or_create_by(name: "Syracuse")
      state.cities.find_or_create_by(name: "Albany")
    end
    State.where(abb: "NC").take do |state|
      state.cities.find_or_create_by(name: "Raleigh")
      state.cities.find_or_create_by(name: "Charlotte")
      state.cities.find_or_create_by(name: "Greensboro")
      state.cities.find_or_create_by(name: "Durham")
    end
    State.where(abb: "ND").take do |state|
      state.cities.find_or_create_by(name: "Bismark")
      state.cities.find_or_create_by(name: "Fargo")
    end
    State.where(abb: "OH").take do |state|
      state.cities.find_or_create_by(name: "Columbus")
      state.cities.find_or_create_by(name: "Cleveland")
      state.cities.find_or_create_by(name: "Cincinnati")
    end
    State.where(abb: "OK").take do |state|
      state.cities.find_or_create_by(name: "Oklahoma City")
      state.cities.find_or_create_by(name: "Tulsa")
    end
    State.where(abb: "OR").take do |state|
      state.cities.find_or_create_by(name: "Salem")
      state.cities.find_or_create_by(name: "Portland")
    end
    State.where(abb: "PA").take do |state|
      state.cities.find_or_create_by(name: "Harrisburg")
      state.cities.find_or_create_by(name: "Philadelphia")
      state.cities.find_or_create_by(name: "Pittsburgh")
      state.cities.find_or_create_by(name: "Wilkes Barre")
    end
    State.where(abb: "RI").take do |state|
      state.cities.find_or_create_by(name: "Providence")
    end
    State.where(abb: "SC").take do |state|
      state.cities.find_or_create_by(name: "Columbia")
    end
    State.where(abb: "SD").take do |state|
      state.cities.find_or_create_by(name: "Pierre")
      state.cities.find_or_create_by(name: "Sioux Falls")
    end
    State.where(abb: "TN").take do |state|
      state.cities.find_or_create_by(name: "Nashville")
      state.cities.find_or_create_by(name: "Memphis")
      state.cities.find_or_create_by(name: "Knoxville")
    end
    State.where(abb: "TX").take do |state|
      state.cities.find_or_create_by(name: "Austin")
      state.cities.find_or_create_by(name: "Houston")
      state.cities.find_or_create_by(name: "San Antonio")
      state.cities.find_or_create_by(name: "Dallas")
      state.cities.find_or_create_by(name: "Fort Worth")
      state.cities.find_or_create_by(name: "El Paso")
      state.cities.find_or_create_by(name: "Arlington")
    end
    State.where(abb: "UT").take do |state|
      state.cities.find_or_create_by(name: "Salt Lake City")
    end
    State.where(abb: "VT").take do |state|
      state.cities.find_or_create_by(name: "Montpelier")
      state.cities.find_or_create_by(name: "Burlington")
    end
    State.where(abb: "VA").take do |state|
      state.cities.find_or_create_by(name: "Richmond")
      state.cities.find_or_create_by(name: "Virginia Beach")
      state.cities.find_or_create_by(name: "Norfolk")
      state.cities.find_or_create_by(name: "Chesapeake")
      state.cities.find_or_create_by(name: "Arlington")
      state.cities.find_or_create_by(name: "Newport News")
      state.cities.find_or_create_by(name: "Alexandria")
      state.cities.find_or_create_by(name: "Hampton")
      state.cities.find_or_create_by(name: "Roanoke")
    end
    State.where(abb: "WA").take do |state|
      state.cities.find_or_create_by(name: "Olympia")
      state.cities.find_or_create_by(name: "Seattle")
      state.cities.find_or_create_by(name: "Tacoma")
      state.cities.find_or_create_by(name: "Vancouver")
    end
    State.where(abb: "WV").take do |state|
      state.cities.find_or_create_by(name: "Charleston")
      state.cities.find_or_create_by(name: "Huntington")
    end
    State.where(abb: "WI").take do |state|
      state.cities.find_or_create_by(name: "Madison")
      state.cities.find_or_create_by(name: "Milwaukee")
      state.cities.find_or_create_by(name: "Green Bay")
      state.cities.find_or_create_by(name: "Kenosha")
    end
    State.where(abb: "WY").take do |state|
      state.cities.find_or_create_by(name: "Cheyenne")
    end
    State.where(abb: "DC").take do |state|
      state.cities.find_or_create_by(name: "Washington")
    end

      
  end
end