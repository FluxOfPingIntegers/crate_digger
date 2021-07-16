require 'dotenv/load'

class YelpApi

  attr_reader :businesses, :response

  def initialize(location)
    
    url = URI("https://api.yelp.com/v3/businesses/search?location=#{location}&term=record store&limit=10")

    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    
    request = Net::HTTP::Get.new(url)
    request["Authorization"] = "Bearer #{ENV['YELP_KEY']}"
    response = https.request(request)
    results = JSON.parse(response.body)
byebug
  end

end