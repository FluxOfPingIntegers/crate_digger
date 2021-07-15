class ZipScraper
  @@site = "https://www.zip-codes.com/city/"

  def self.city_zip_codes(city)
    abb = city.state_abb.downcase
    city_name = city.name.downcase.split(" ").join("-")
    url = URI.parse("#{@@site}#{abb}-#{city_name}.asp")
    zip_response = Net::HTTP.get(url)
    noko_html = Nokogiri::HTML(zip_response)
    last = noko_html.css(".statTable").children.size - 18
    zip_codes = []
    counter = 3
    while counter != last do
#byebug
      zip = noko_html.css(".statTable").children[counter].children[0].content
      zip = zip[9..13]
      zip_codes << zip
      counter += 1
    end
    zip_code_list = zip_codes.join(", ")
    city.update(zip_code_list: zip_code_list)
  end

end