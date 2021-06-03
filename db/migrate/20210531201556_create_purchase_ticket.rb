class CreatePurchaseTicket < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :cc_number
      t.integer :cc_exp_date


      t.timestamps
    end
  end
end
