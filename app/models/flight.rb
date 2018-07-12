class Flight < ActiveRecord::Base
  belongs_to :pilot
  belongs_to :traveler

  attr_accessor :flight

  def flight_data

  end


end
