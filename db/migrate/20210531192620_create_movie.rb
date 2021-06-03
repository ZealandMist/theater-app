class CreateMovie < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.string :rating
      t.integer :movie_length

      t.timestamps
    end
  end
end
