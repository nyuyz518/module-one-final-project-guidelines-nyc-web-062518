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

  def mood_shift
    if flight_count > 5
      self.mood = "unmotivated"
    else
      self.mood = "lively"
    end
  end

  def method_name

  end


  def find_flight
    if Flight.all.count > 0
      Flight.all.find do |flight|
        flight.pilot_id == self.id
      end
    else
      nil
    end
  end

end
