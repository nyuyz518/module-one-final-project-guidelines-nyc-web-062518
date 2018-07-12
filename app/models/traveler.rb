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
  def self.find_by_name(name)
     self.all.find {|traveler| traveler.name == name}
  end


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

  def pilot_name
    find_flight.map {|flight| flight.pilot.name}
  end

  def all_flight_numbers
    find_flight.map {|flight| flight.flight_num}
    # add sort by flight date?
  end



  def find_pilot_rating
    # find_pilot.map {|pilot| {pilot.name => pilot.rating}}
    find_pilot.each do |pilot|
      puts "Flight Number:#{}\n"
      puts "Pilot: #{pilot.name}\n"
      puts "Pilot Rating: #{pilot.rating} Stars\n\n"
    end
    # "Here are the rating(s) for your flights: \n" + ratings
  end


  def yes_no_input(y_n_response)
    if y_n_response == "Yes" || y_n_response == "yes"
      puts "Would you like to see your flight pilot(s)?"
      input = gets.chomp
      if input == "Yes" || input == "yes"
        puts self.pilots.map {|pilot| pilot.name}
      else
        puts "Thank you for flying with Mochi Airlines. HAPPY TRAVELS~"
      end
    elsif y_n_response == "No" || input == "no"
      puts "Okay. Here are the flights you have booked with us:"
      puts self.all_flight_numbers
    else
      puts "Okay... Why don't you take the train??..."
    end
  end

  #
  # def join_flight
  # jay =  Pilot.all.first
  # # binding.pry
  #   Flight.create(flight: 123, traveler_id: self, pilot_id: jay)
  # end

end
