# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
StateScraper.create_states
CityBuilder.create_cities

City.all.each{|city| ZipScraper.city_zip_codes(city)}
City.all.each{|city| YelpApi.search(city.name)}

State.first_city_pop_for("DE")
State.first_city_pop_for("ME")
State.first_city_pop_for("MS")
State.first_city_pop_for("SC")
State.first_city_pop_for("WV")