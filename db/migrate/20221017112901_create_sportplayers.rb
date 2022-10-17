class CreateSportplayers < ActiveRecord::Migration[7.0]
  def change
    create_table :sportplayers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :ball_control
      t.integer :short_passing
      t.integer :dribbling
      t.integer :running_with_the_ball
      t.integer :crossing
      t.integer :shooting
      t.integer :progress

      t.timestamps
    end
  end
end
