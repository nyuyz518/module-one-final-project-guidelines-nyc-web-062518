class AddPilotRating < ActiveRecord::Migration[4.2]

  def change
    add_column :pilots, :rating, :integer
  end
end
