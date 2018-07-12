class Pilot < ActiveRecord::Base
  has_many :flights
  has_many :travelers, through: :flights

  def pilots_flight(pilot_id,flight_num)
    # Flights.all.find {|flight| flight.}
    puts "#{self.name} pilots flight ##{flight_num}."
  end


  def flight_count
    self.flights.size
  end

  def traveler_count
    self.travelers.size
  end


end
