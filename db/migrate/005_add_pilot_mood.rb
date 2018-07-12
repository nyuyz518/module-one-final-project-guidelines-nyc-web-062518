class AddPilotMood < ActiveRecord::Migration[4.2]

  def change
    add_column :pilots, :mood, :string
  end
end
