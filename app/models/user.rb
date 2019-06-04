class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings, inverse_of: :user
  accepts_nested_attributes_for :bookings,
                                reject_if: proc { |attributes| attributes[:speaker_id].blank? },
                                allow_destroy: true

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :post, presence: true
  validates :company, presence: true
  validates :motivated, presence: true
  validates :informed, presence: true
  validates :interested, presence: true
  validates :phone, presence: true

  after_create :send_welcome_email

  enum motivations: {
    "J'ai ou je vais créer mon entreprise" => 0,
    "Je souhaite changer de carrière et travailler dans la tech" => 1,
    "Je recherche des compétences techniques pour évoluer dans mon métier actuel" => 2,
    "Après mes études, je souhaite rejoindre ou créer une startup" => 3,
    "Je suis ou souhaite travailler en freelance ou devenir digital nomad" => 4,
    "Je suis curieux d'en savoir plus sur ce thème" => 5
  }

  enum interests: {
    "Oui, j'aimerais en discuter avec vous pour en savoir plus" => 0,
    "Pourquoi pas, envoyez-moi des informations supplémentaires" => 1,
    "Non merci" => 2
  }

  enum informations: {
    "Oui, avec plaisir !" => 0,
    "Non merci." => 1
  }

  def name
    "#{first_name} #{last_name}"
  end

  private

  def send_welcome_email
    UserMailer.with(user: self).welcome.deliver_now
  end

end
