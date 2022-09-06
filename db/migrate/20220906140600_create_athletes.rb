class CreateAthletes < ActiveRecord::Migration[7.0]
  def change
    create_table :athletes do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :week_1
      t.integer :week_2
      t.integer :week_3
      t.integer :week_4
      t.integer :week_5
      t.integer :week_6
      t.string :progress

      t.timestamps
    end
  end
end
