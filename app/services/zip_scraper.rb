class ZipScraper
  @@site = "https://www.zip-codes.com/city/"
  # ^ this needs to end with downcase state abbreviation dash city name and end with .asp
  # example https://www.zip-codes.com/city/ny-new-york.asp

  # this one needs a lot of work
  def self.city_zip_codes(city)
    abb = city.state_abb.downcase
    city_name = city.name.downcase.split(" ").join("-")
    url = URI.parse("#{@@site}#{abb}-#{city_name}.asp")
    zip_response = Net::HTTP.get(url)
    noko_html = Nokogiri::HTML(zip_response)
    last = noko_html.css(".statTable").children.size - 18
    zip_codes = []
    i = 3
    while i != last do
      zip = noko_html.css(".statTable").children[i].children[0].content
      zip = zip[9..13]
      zip_codes << zip
      i += 1
    end
    
    
    # currently if I select an element from this table with:
    # noko_html.css(".statTable").children[3].children[0].content
    # I will get the first zip code as => "Zip Code 23173"
    # If I hold on to this as a variable like last_zip I can do last_zip[9..13] and get => "23173"
    # The last zip code is at: noko_html.css(".statTable").children[51].children[0].content
    # This is 19 less than: noko_html.css(".statTable").children.size
    puts "complete"
  end

end