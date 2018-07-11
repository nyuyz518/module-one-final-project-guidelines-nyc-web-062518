class Flight < ActiveRecord::Base
  belongs_to :pilot
  belongs_to :traveler


  def flight_data
    
  end


end
