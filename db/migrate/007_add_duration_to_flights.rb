class AddDurationToFlights < ActiveRecord::Migration[4.2]

  def change
    add_column :flights, :duration, :integer
    add_column :flights, :departure_time, :integer
  end
end
