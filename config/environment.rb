require 'bundler'
Bundler.require
require 'active_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'app'

# require 'pry'
#
flight_one = Flight.new(flight_num: 1, pilot_id: 1, traveler_id: 1)
# flight_two = Flight.new(name: "UA")

traveler_one = Traveler.new(name: "Jack")
traveler_two = Traveler.new(name: "Lily")

pilot_one = Pilot.new(name: "Dick")
pilot_two = Pilot.new(name: "Elbin")
#
binding.pry
