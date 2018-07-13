require_relative '../config/environment'
#require_relative '../app/models/traveler.rb'
# Pry.start

ActiveRecord::Base.logger.level = 1

plane = "
                                           ********
                                          *      *
                                         *      *
      ***********************************      *
    *  (  )      () () () () () ()            *
  *           *       MOCHI AIRLINES        *
 *             *        *               *
  ************************************  -ds
                  *       *
                   *********
"
puts plane

puts "Welcome to Mochi Airlines!"
puts "Please provide your name."

name = gets.chomp.capitalize

puts "Hi #{name}, thank you for flying with us."

puts "Do you know your flight number?"



y_n_response = gets.chomp

traveler_instance = Traveler.find_by(name:name)
traveler_instance.yes_no_input(y_n_response)

  puts "May we assist you with anything else?"
  puts "Please select from the available options:"

# method to allow user to select "1, 2 ,3 ,or 4"
  puts "1. Your earliest flight booked."
  puts "2. Your shortest flight booked."
  puts "3. Highest rated pilot."
  puts "4. The pilot with the most years of experience."
  puts "5. Nope~ I'm ready to fly!"

select_choice = gets.chomp

case select_choice
when "1"
  puts traveler_instance.all_travelers_flights
  puts "\n\n\n"
when "2"
  puts Flight.shortest_flight
  puts "\n\n\n"
when "3"
  puts Pilot.highest_rating
  puts "\n\n\n"
when "4"
  puts Pilot.most_flight_experience
  puts "\n\n\n"
when "5"
  good_flight = "
  .____   __ _
__o__   _______ _ _  _                                     /     /
\    ~\                                                  /      /
\     '\                                         ..../      .'
. ' ' . ~\                                      ' /       /
.  _    .  ~ \  .+~\~ ~ ' ' " " ' ' ~ - - - - - -''_      /
.  <#  .  - - -/' . ' \  __                          '~ - \
.. -           ~-.._ / |__|  ( )  ( )  ( )  0  o    _ _    ~ .
.-'                                               .- ~    '-.    -.
<       Fly with Mochi Again           . ~ ' ' .             . - ~             ~ -.__~_. _ _
~- .           ....          . . . . ,- ~
' ~ - - - - =.   <#>    .         \.._
.     ~      ____ _ .. ..  .- .
.         '        ~ -.        ~ -.
' . . '               ~ - .       ~-.
~ - .      ~ .
~ -...0..~. ____
"

puts good_flight
puts "Have a great day and safe travels. Thank you for flying with Mochi Airlines"

else
puts "Go home..."
end

while select_choice != "5"

  puts "May we assist you with anything else?"
   puts "Please select from the available options:"

  # method to allow user to select "1, 2 ,3 ,or 4"
    puts "1. Your earliest flight booked."
    puts "2. Your shortest flight booked."
    puts "3. Highest rated pilot."
    puts "4. The pilot with the most years of experience."
    puts "5. Nope~ I'm ready to fly!"

  select_choice = gets.chomp

  case select_choice
  when "1"
    puts traveler_instance.all_travelers_flights
    puts "\n\n\n"
  when "2"
    puts Flight.shortest_flight
    puts "\n\n\n"
  when "3"
    puts Pilot.highest_rating
    puts "\n\n\n"
  when "4"
    puts Pilot.most_flight_experience
    puts "\n\n\n"
  when "5"
    good_flight = "
    ```.____   __ _
__o__   _______ _ _  _                                     /     /
\    ~\                                                  /      /
\     '\                                         ..../      .'
. ' ' . ~\                                      ' /       /
.  _    .  ~ \  .+~\~ ~ ' ' " " ' ' ~ - - - - - -''_      /
.  <#  .  - - -/' . ' \  __                          '~ - \
.. -           ~-.._ / |__|  ( )  ( )  ( )  0  o    _ _    ~ .
.-'                                               .- ~    '-.    -.
<                      . ~ ' ' .             . - ~             ~ -.__~_. _ _
~- .       MOCHI AIRLINES  .      . . . . ,- ~
' ~ - - - - =.   <#>    .         \.._
.     ~      ____ _ .. ..  .- .
.         '        ~ -.        ~ -.
' . . '               ~ - .       ~-.
~ - .      ~ .
~ -...0..~. ____```
"

puts good_flight



puts "Thank you for flying with MOCHI Airlines. HAPPY TRAVELS~"

else
  puts "Go home..."
end
end
# 1. show the highest rated pilot
# 2. show the earliest flight of the travler? (add date to flight class (ex: 07-12-2018))
# 3. which of the traveler's flight is the shortest duration.
# 4. Which pilot has the most years of experience flying. (add year_exp to pilot class)

#
#
#

# puts "Have a great day and safe travels. Thank you for flying with Mochi Airlines"
