class ScraperImporter
  @@states_site = "https://www.infoplease.com/us/postal-information/state-abbreviations-and-state-postal-codes"

  @@zips_site = "https://www.zip-codes.com/city/"
  # ^ this needs to end with downcase state abbreviation dash city name and end with .asp
  # example https://www.zip-codes.com/city/ny-new-york.asp

  def self.create_states
    url = URI.parse(@@states_site)
    state_response = Net::HTTP.get(url)
    noko_html = Nokogiri::HTML(state_response)
    state_array = []
    c = 0
    while c < 51
      state_array << noko_html.css(".sgmltable").children[1].children[c].content
      c += 1
    end
    state_array.delete_at(8)
    state_array = state_array.map {|x| x.split(" ")}
    c = 28
    while c < 34
      state_array[c][0..1] = state_array[c][0..1].join(" ")
      c += 1
    end
    c = 38
    while c < 41
      state_array[c][0..1] = state_array[c][0..1].join(" ")
      c += 1
    end
    state_array[47][0..1] = state_array[47][0..1].join(" ")
    c = 0
    state_array.each do |x|
      x[1] = x[1][-2..-1]
    end
    state_array << ["Washington", "DC"]
  byebug    
  end

  def self.city_zip_codes(city)
    abb = city.state_abb.downcase
    city_name = city.name.downcase.split(" ").join("-")
  byebug
    url = URI.parse("#{@@zips_site}#{abb}-#{city_name}.asp")
    puts "complete"
  end


end