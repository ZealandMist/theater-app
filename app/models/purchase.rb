class Purchase < ApplicationRecord
  belongs_to :showing_time

  validates :showing_time_id, :first_name, :last_name, :email_address, presence: true
  validates :email, confirmation: true
  validates :credit_card_number, length: { minimum: 13 }
  validates :credit_card_number, length: { maximum: 19 }
  
end
