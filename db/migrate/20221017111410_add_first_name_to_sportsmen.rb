class AddFirstNameToSportsmen < ActiveRecord::Migration[7.0]
  def change
    add_column :sportsmen, :first_name, :string
  end
end
