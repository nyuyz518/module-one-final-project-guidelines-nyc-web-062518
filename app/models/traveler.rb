class Traveler < ActiveRecord::Base
  has_many :flights
  has_many :pilots, through: :flights


  def buy_ticket
    Flight.create(flight_num: flight_num, traveler_id: self, pilot_id: pilot_id)
  end


  def in_flight_by
    # Flight.create(flight_num: flight_num, traveler_id: self, pilot_id: pilot_id)
    if Flight.all.find {|flight| flight.traveler == self}
      puts "Annyeonghaseo #{self.name}. Captain #{pilot.name} will be your pilot for flight ##{flight_num}."
    else
      puts "I'm sorry. We do not have flight booked under the name, #{self.name}."
    end
  end

  def join_flight
  jay =  Pilot.all.first
  # binding.pry
    Flight.create(flight_num: 123, traveler_id: self, pilot_id: jay)
  end

end
