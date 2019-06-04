class Booking < ApplicationRecord
  belongs_to :speaker
  belongs_to :user, inverse_of: :bookings

  validates :user, uniqueness: { scope: :speaker }

  enum slots: {
    "14h00" => 0,
    "14h15" => 1,
    "14h30" => 2,
    "14h45" => 3,
    "15h15" => 4,
    "15h30" => 5,
    "15h45" => 6,
    "16h15" => 7,
    "16h30" => 8,
    "16h45" => 9
  }
end
