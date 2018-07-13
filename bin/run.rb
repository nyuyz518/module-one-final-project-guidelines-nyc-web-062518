require_relative '../config/environment'
#require_relative '../app/models/traveler.rb'
# Pry.start

ActiveRecord::Base.logger.level = 1

puts "Welcome to Mochi Airlines!"
puts "Please provide your name."

name = gets.chomp.capitalize

puts "Hi #{name}, thank you for flying with us."

puts "Do you know your flight number?"



y_n_response = gets.chomp

traveler_instance = Traveler.find_by(name:name)
traveler_instance.yes_no_input(y_n_response)

puts "May we assist you with anything else?"

 y_n_reponse = gets.chomp

 puts "Okay. Please select from the available options:"

# method to allow user to select "1, 2 ,3 ,or 4"
  puts "1. Your earliest flight booked."
  puts "2. Your shortest flight booked."
  puts "3. Highest rated pilot."
  puts "4. The pilot with the most years of experience."

select_choice = gets.chomp

case select_choice
when "1"
  puts "ok"
when "2"
  puts "ok2"
when "3"
  puts Pilot.highest_rating
when "4"
  puts "ok4"
else
  puts "Go home..."
end

# 1. show the highest rated pilot
# 2. show the earliest flight of the travler? (add date to flight class (ex: 07-12-2018))
# 3. which of the traveler's flight is the shortest duration.
# 4. Which pilot has the most years of experience flying. (add year_exp to pilot class)

#
#
#

# puts "Have a great day and safe travels. Thank you for flying with Mochi Airlines"
