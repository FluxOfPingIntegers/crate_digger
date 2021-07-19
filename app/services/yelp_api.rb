require 'dotenv/load'

class YelpApi

  attr_reader :businesses, :response

  def self.search(city_name)
    
    url = URI("https://api.yelp.com/v3/businesses/search?location=#{city_name}&term=record store&limit=50")

    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    
    request = Net::HTTP::Get.new(url)
    request["Authorization"] = "Bearer #{ENV['YELP_KEY']}"
    response = https.request(request)
    results = JSON.parse(response.body)
    results["businesses"].each do |business|
      if Store.search_by_yelp_id(business["id"]).empty? && City.search_zip(business["location"]["zip_code"]).present?
        city = City.search_zip(business["location"]["zip_code"]).first
        store_params = {
          yelp_id: business["id"],
          name: business["name"],
          img: business["image_url"],
          web: business["url"],
          address: business["location"]["display_address"][0],
          phone: business["display_phone"],
          zip_code: business["location"]["zip_code"],
          parse_hours: business["hours"][0]["open"]          
        }
        city.stores.find_or_create_by(store_params)
      end
    end
  end

  def self.search_by_zip(zip)
    
    url = URI("https://api.yelp.com/v3/businesses/search?location=#{zip}&term=record store&limit=10")

    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    
    request = Net::HTTP::Get.new(url)
    request["Authorization"] = "Bearer #{ENV['YELP_KEY']}"
    response = https.request(request)
    results = JSON.parse(response.body)
    if !!results["businesses"]
      results["businesses"].each do |business|
        if Store.search_by_yelp_id(business["id"]).empty? && City.search_zip(business["location"]["zip_code"]).present?
          city = City.search_zip(business["location"]["zip_code"]).first
          store_params = {
            yelp_id: business["id"],
            name: business["name"],
            img: business["image_url"],
            web: business["url"],
            address: business["location"]["display_address"][0],
            phone: business["display_phone"],
            zip_code: business["location"]["zip_code"],
            parse_hours: business["hours"][0]["open"]
          }
          city.stores.find_or_create_by(store_params)
        end
      end
    end
  end

  def self.update_store(store)
    stores_yelp_id = store.yelp_id
    url = URI("https://api.yelp.com/v3/businesses/#{stores_yelp_id}")
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    
    request = Net::HTTP::Get.new(url)
    request["Authorization"] = "Bearer #{ENV['YELP_KEY']}"
    response = https.request(request)
    results = JSON.parse(response.body)
    store_params = {
      yelp_id: results["id"],
      name: results["name"],
      img: results["image_url"],
      web: results["url"],
      address: results["location"]["display_address"][0],
      phone: results["display_phone"],
      zip_code: results["location"]["zip_code"]
    }
    if !!results["hours"][0]["open"]
      store_params[:parse_hours] = results["hours"][0]["open"]
    end
    store.update(store_params)

  end

end