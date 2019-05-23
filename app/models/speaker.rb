class Speaker < ApplicationRecord
  has_many :bookings

  def name
    "#{first_name} #{last_name}"
  end
end
