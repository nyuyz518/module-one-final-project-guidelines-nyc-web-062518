class Flight < ActiveRecord::Base
  belongs_to :pilot
  belongs_to :traveler


def self.shortest_flight
  self.all.sort_by do |flight|
    flight.duration
  end[0].flight_num
end

def earliest_flight
  self.all.sort_by do |flight|
    flight.departure_time
  end[0].flight_num
end

end
