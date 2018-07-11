class CreateFlights < ActiveRecord::Migration[4.2]

  def change
     create_table :flights do |t|
     t.string :flight
     t.integer :traveler_id
     t.integer :pilot_id
   end
  end
end
