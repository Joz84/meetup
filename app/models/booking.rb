class Booking < ApplicationRecord
  belongs_to :speaker
  belongs_to :user, inverse_of: :bookings
  enum slots: { "10h - 10h30" => 0, "10h30 - 11h" => 1, "11h - 11h30" => 2 }
end
