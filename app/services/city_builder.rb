class CityBuilder

  def self.create_cities
    
    state = State.where(abb: "AL").take
      state.cities.find_or_create_by(name: "Montgomery")
      state.cities.find_or_create_by(name: "Birmingham")
    
    state = State.where(abb: "AK").take
      state.cities.find_or_create_by(name: "Anchorage")
    
    state = State.where(abb: "AZ").take
      state.cities.find_or_create_by(name: "Phoenix")
      state.cities.find_or_create_by(name: "Tucson")
      state.cities.find_or_create_by(name: "Mesa")
    
    state = State.where(abb: "AR").take
      state.cities.find_or_create_by(name: "Little Rock")
    
    state = State.where(abb: "CA").take
      state.cities.find_or_create_by(name: "Sacramento")
      state.cities.find_or_create_by(name: "Los Angeles")
      state.cities.find_or_create_by(name: "San Diego")
      state.cities.find_or_create_by(name: "San Jose")
      state.cities.find_or_create_by(name: "San Francisco")
      state.cities.find_or_create_by(name: "Fresno")
      state.cities.find_or_create_by(name: "Sacramento")
      state.cities.find_or_create_by(name: "Long Beach")
      state.cities.find_or_create_by(name: "Oakland")
    
    state = State.where(abb: "CO").take
      state.cities.find_or_create_by(name: "Denver")
      state.cities.find_or_create_by(name: "Colorado Springs")
    
    state = State.where(abb: "CT").take
      state.cities.find_or_create_by(name: "Bridgeport")
    
    state = State.where(abb: "DE").take
      state.cities.find_or_create_by(name: "Wilmington")
    
    state = State.where(abb: "FL").take
      state.cities.find_or_create_by(name: "Tallahassee")
      state.cities.find_or_create_by(name: "Miami")
      state.cities.find_or_create_by(name: "Tampa")
      state.cities.find_or_create_by(name: "Orlando")
    
    state = State.where(abb: "GA").take
      state.cities.find_or_create_by(name: "Atlanta")
    
    state = State.where(abb: "HI").take
      state.cities.find_or_create_by(name: "Honolulu")
    
    state = State.where(abb: "ID").take
      state.cities.find_or_create_by(name: "Boise")
    
    state = State.where(abb: "IL").take
      state.cities.find_or_create_by(name: "Chicago")
    
    state = State.where(abb: "IN").take
      state.cities.find_or_create_by(name: "Indianapolis")
      state.cities.find_or_create_by(name: "Fort Wayne")
    
    state = State.where(abb: "IA").take
      state.cities.find_or_create_by(name: "Des Moines")
    
    state = State.where(abb: "KS").take
      state.cities.find_or_create_by(name: "Topeka")
      state.cities.find_or_create_by(name: "Wichita")
      state.cities.find_or_create_by(name: "Kansas City")
    
    state = State.where(abb: "KY").take
      state.cities.find_or_create_by(name: "Louisville")
    
    state = State.where(abb: "LA").take
      state.cities.find_or_create_by(name: "Baton Rouge")
      state.cities.find_or_create_by(name: "New Orleans")
    
    state = State.where(abb: "ME").take
      state.cities.find_or_create_by(name: "Portland")
    
    state = State.where(abb: "MD").take
      state.cities.find_or_create_by(name: "Annapolis")
      state.cities.find_or_create_by(name: "Baltimore")
    
    state = State.where(abb: "MA").take
      state.cities.find_or_create_by(name: "Boston")
      state.cities.find_or_create_by(name: "Worcester")
    
    state = State.where(abb: "MI").take
      state.cities.find_or_create_by(name: "Lansing")
      state.cities.find_or_create_by(name: "Detroit")
    
    state = State.where(abb: "MN").take
      state.cities.find_or_create_by(name: "Saint Paul")
      state.cities.find_or_create_by(name: "Minneapolis")
    
    state = State.where(abb: "MS").take
      state.cities.find_or_create_by(name: "Jackson")
    
    state = State.where(abb: "MO").take
      state.cities.find_or_create_by(name: "Kansas City")
      state.cities.find_or_create_by(name: "Saint Louis")
    
    state = State.where(abb: "MT").take
      state.cities.find_or_create_by(name: "Helena")
      state.cities.find_or_create_by(name: "Billings")
    
    state = State.where(abb: "NE").take
      state.cities.find_or_create_by(name: "Omaha")
    
    state = State.where(abb: "NV").take
      state.cities.find_or_create_by(name: "Carson City")
      state.cities.find_or_create_by(name: "Las Vegas")
      state.cities.find_or_create_by(name: "Henderson")
      state.cities.find_or_create_by(name: "Reno")
    
    state = State.where(abb: "NH").take
      state.cities.find_or_create_by(name: "Manchester")
    
    state = State.where(abb: "NJ").take
      state.cities.find_or_create_by(name: "Jersey City")
    
    state = State.where(abb: "NM").take
      state.cities.find_or_create_by(name: "Santa Fe")
      state.cities.find_or_create_by(name: "Albuquerque")
    
    state = State.where(abb: "NY").take
      state.cities.find_or_create_by(name: "Albany")
      state.cities.find_or_create_by(name: "Buffalo")
      state.cities.find_or_create_by(name: "New York City")
      state.cities.find_or_create_by(name: "Rochester")
      state.cities.find_or_create_by(name: "Yonkers")
      state.cities.find_or_create_by(name: "Syracuse")
      state.cities.find_or_create_by(name: "Albany")
    
    state = State.where(abb: "NC").take
      state.cities.find_or_create_by(name: "Raleigh")
      state.cities.find_or_create_by(name: "Charlotte")
      state.cities.find_or_create_by(name: "Greensboro")
      state.cities.find_or_create_by(name: "Durham")
    
    state = State.where(abb: "ND").take
      state.cities.find_or_create_by(name: "Bismarck")
      state.cities.find_or_create_by(name: "Fargo")
    
    state = State.where(abb: "OH").take
      state.cities.find_or_create_by(name: "Columbus")
      state.cities.find_or_create_by(name: "Cleveland")
      state.cities.find_or_create_by(name: "Cincinnati")
    
    state = State.where(abb: "OK").take
      state.cities.find_or_create_by(name: "Oklahoma City")
      state.cities.find_or_create_by(name: "Tulsa")
    
    state = State.where(abb: "OR").take
      state.cities.find_or_create_by(name: "Portland")
    
    state = State.where(abb: "PA").take
      state.cities.find_or_create_by(name: "Harrisburg")
      state.cities.find_or_create_by(name: "Philadelphia")
      state.cities.find_or_create_by(name: "Pittsburgh")
      state.cities.find_or_create_by(name: "Wilkes Barre")
    
    state = State.where(abb: "RI").take
      state.cities.find_or_create_by(name: "Providence")
    
    state = State.where(abb: "SC").take
      state.cities.find_or_create_by(name: "Columbia")
    
    state = State.where(abb: "SD").take
      state.cities.find_or_create_by(name: "Sioux Falls")
    
    state = State.where(abb: "TN").take
      state.cities.find_or_create_by(name: "Nashville")
      state.cities.find_or_create_by(name: "Memphis")
      state.cities.find_or_create_by(name: "Knoxville")
    
    state = State.where(abb: "TX").take
      state.cities.find_or_create_by(name: "Austin")
      state.cities.find_or_create_by(name: "Houston")
      state.cities.find_or_create_by(name: "San Antonio")
      state.cities.find_or_create_by(name: "Dallas")
      state.cities.find_or_create_by(name: "Fort Worth")
      state.cities.find_or_create_by(name: "El Paso")
      state.cities.find_or_create_by(name: "Arlington")
    
    state = State.where(abb: "UT").take
      state.cities.find_or_create_by(name: "Salt Lake City")
    
    state = State.where(abb: "VT").take
      state.cities.find_or_create_by(name: "Montpelier")
      state.cities.find_or_create_by(name: "Burlington")
    
    state = State.where(abb: "VA").take
      state.cities.find_or_create_by(name: "Richmond")
      state.cities.find_or_create_by(name: "Virginia Beach")
      state.cities.find_or_create_by(name: "Norfolk")
      state.cities.find_or_create_by(name: "Chesapeake")
      state.cities.find_or_create_by(name: "Arlington")
      state.cities.find_or_create_by(name: "Newport News")
      state.cities.find_or_create_by(name: "Alexandria")
      state.cities.find_or_create_by(name: "Hampton")
      state.cities.find_or_create_by(name: "Roanoke")
      state.cities.find_or_create_by(name: "Charlottesvile")
    
    state = State.where(abb: "WA").take
      state.cities.find_or_create_by(name: "Olympia")
      state.cities.find_or_create_by(name: "Seattle")
      state.cities.find_or_create_by(name: "Tacoma")
      state.cities.find_or_create_by(name: "Vancouver")
    
    state = State.where(abb: "WV").take
      state.cities.find_or_create_by(name: "Charleston")
    
    state = State.where(abb: "WI").take
      state.cities.find_or_create_by(name: "Madison")
      state.cities.find_or_create_by(name: "Milwaukee")
      state.cities.find_or_create_by(name: "Green Bay")
      state.cities.find_or_create_by(name: "Kenosha")
    
    state = State.where(abb: "WY").take
      state.cities.find_or_create_by(name: "Cheyenne")
    
    state = State.where(abb: "DC").take
      state.cities.find_or_create_by(name: "Washington")
    City.all
  end
end
    

      
  
