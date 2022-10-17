class CreateSportsmen < ActiveRecord::Migration[7.0]
  def change
    create_table :sportsmen do |t|
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
