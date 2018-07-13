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

  def self.all_flight_numbers
    find_flight.map {|flight| flight.flight_num}
    # add sort by flight date?
  end

  def all_travelers_flights
    find_flight.sort_by {|flight| flight.departure_time}[0].flight_num
  end



  def find_pilot_rating
    # find_pilot.map {|pilot| {pilot.name => pilot.rating}}
    find_flight.each do |flight|
      flight_number = flight.flight_num
      pilot_x = Pilot.where(id: flight.pilot_id)[0].name
      pilot_rating = Pilot.where(id: flight.pilot_id)[0].rating
      puts "Flight Number: #{flight_number}\n"
      puts "Pilot: #{pilot_x}\n"
      puts "Pilot Rating: #{pilot_rating} Stars\n\n"
    end
    # find_pilot.each do |pilot|
    #   # puts "Flight Number:#{}\n"
    #   puts "Pilot: #{pilot.name}\n"
    #   puts "Pilot Rating: #{pilot.rating} Stars\n\n"
    # end
    # "Here are the rating(s) for your flights: \n" + ratings
  end



  def yes_no_input(y_n_response)
    if y_n_response == "Yes" || y_n_response == "yes"
      puts "\n"
      puts "Would you like to see your flight pilot(s)?"
      input = gets.chomp
      if input == "Yes" || input == "yes"
        puts "\n"
        self.find_pilot_rating
        # binding.pry
      else
        puts "\n"
        puts "Thank you for flying with MOCHI Airlines. HAPPY TRAVELS~"
      end
    elsif y_n_response == "No" || input == "no"
      puts "Okay. Here are the flights you have booked with us:"
      puts "\n"
      puts self.all_flight_numbers
    else
      puts "\n"
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
