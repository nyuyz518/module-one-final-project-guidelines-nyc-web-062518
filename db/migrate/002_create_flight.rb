class CreateFlight < ActiveRecord::Migration[4.2]

  def change
       create_table :flights do |t|
       t.integer :flight_num
      end
  end
end
