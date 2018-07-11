class CreateTravelers < ActiveRecord::Migration[4.2]

  def change
   create_table :travelers do |t|
     t.string :name
   end
  end
  
end
