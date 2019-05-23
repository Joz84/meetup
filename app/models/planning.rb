class Planning < ApplicationRecord
  belongs_to :user
  has_many :bookings, inverse_of: :planning
  accepts_nested_attributes_for :bookings,
                                reject_if: proc { |attributes| attributes[:speaker_id].blank? },
                                allow_destroy: true


end
