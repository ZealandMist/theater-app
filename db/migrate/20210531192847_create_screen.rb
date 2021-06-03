class CreateScreen < ActiveRecord::Migration[6.0]
  def change
    create_table :screens do |t|
      t.string :screen_name
      t.integer :seat_capacity

      t.timestamps
    end
  end
end
