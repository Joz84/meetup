class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings, inverse_of: :user
  accepts_nested_attributes_for :bookings,
                                reject_if: proc { |attributes| attributes[:speaker_id].blank? },
                                allow_destroy: true
end
