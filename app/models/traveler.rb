class Traveler < ActiveRecord::Base
  has_many :flights
  has_many :pilots, through: :flights

  #
  # def buy_ticket
  #   Flight.create(flight: flight, traveler_id: self, pilot_id: pilot_id)
  # end

  # def self.find_all_flights_by(name)
  #   all.flight
  # end


  def find_flight
    # //helper method
    # Flight.create(flight: flight, traveler_id: self, pilot_id: pilot_id)
    # if Flight.all.find do |flight|
    #   flight.traveler == self
    #   binding.pry
    #   puts "Annyeonghaseo #{self.name}. Captain #{} will be your pilot for flight ##{self.flight}."
    #     end
    # else
    #   puts "I'm sorry. We do not have flight booked under the name, #{self.name}."
    # end

    # if Flight.all.count > 0
      Flight.all.select do |flight|
        flight.traveler_id == self.id
      end
    end

  def find_pilot
    find_flight.map {|flight| flight.pilot}
  end

  def all_flight_numbers
    find_flight.map {|flight| flight.flight_num}
  end


  def find_pilot_rating

  end


  def find_

  end

  #
  # def join_flight
  # jay =  Pilot.all.first
  # # binding.pry
  #   Flight.create(flight: 123, traveler_id: self, pilot_id: jay)
  # end

end
