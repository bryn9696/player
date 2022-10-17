class AddAgeToSportsmen < ActiveRecord::Migration[7.0]
  def change
    add_column :sportsmen, :age, :string
  end
end
