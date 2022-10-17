class AddLastNameToSportsmen < ActiveRecord::Migration[7.0]
  def change
    add_column :sportsmen, :last_name, :string
  end
end
