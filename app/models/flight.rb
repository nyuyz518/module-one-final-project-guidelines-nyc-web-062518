class Flight < ActiveRecord::Base
  belongs_to :pilot
  belongs_to :traveler

  # attr_accessor :flight
end
