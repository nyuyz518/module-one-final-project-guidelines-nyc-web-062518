class AddPilotYrsExp < ActiveRecord::Migration[4.2]

  def change
    add_column :pilots, :yrs_exp, :integer
  end
end
