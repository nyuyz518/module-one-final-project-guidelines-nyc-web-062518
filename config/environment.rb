require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'

require 'pry'

# flight_one = Flight.new("AA")
# flight_two = Flight.new("UA")
#
# traveler_one = Traveler.new ("Jack")
# traveler_two = Traveler.new ("Lily")
#
# pilot_one = Pilot.new("Dick")
# pilot_two = Pilot.new("Elbin")

binding.pry
