require_relative '../config/environment'
#require_relative '../app/models/traveler.rb'
# Pry.start

ActiveRecord::Base.logger.level = 1

puts "Welcome to Mochi Airlines!"
puts "Please provide your name."

name = gets.chomp

puts "Hi #{name}, thank you for flying with us."

puts "Do you know your flight number?"



y_n_response = gets.chomp

traveler_instance = Traveler.find_by(name:name)

traveler_instance.yes_no_input(y_n_response)



# gets method for input

# puts out welcome/greetings message
# select language? (extra feature)
