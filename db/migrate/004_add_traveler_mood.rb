class AddTravelerMood < ActiveRecord::Migration[4.2]

  def change
    add_column :travelers, :mood, :string
  end
end
