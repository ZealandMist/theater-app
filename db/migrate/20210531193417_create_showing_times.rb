class CreateShowingTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :showing_times do |t|
      t.references :movie, index: true
      t.references :screen, index: true
      t.datetime :start_time
      t.integer :seats_purchased
      
      t.timestamps
    end
  end
end
