class Speaker < ApplicationRecord
  has_many :bookings
  mount_uploader :photo, PhotoUploader

  def name
    "#{first_name} #{last_name}"
  end
end
