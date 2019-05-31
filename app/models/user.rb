class User < ApplicationRecord
  after_create :set_funeral_preference
  # REMOVE THIS WHEN YOU'RE MAKING THE FUNERAL PREFERENFCE FORMS 'BASICS' & 'CEREMONY'

  has_many :delegates, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :funeral_preferences, dependent: :destroy
  has_many :company_preferences, through: :funeral_preferences
  has_many :templates
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

# SET UP CONDITIONS FOR DASHBOARD COMPLETION HERE !


  def set_funeral_preference
    self.funeral_preferences << FuneralPreference.create
  end

  def delegates_complete?
    self.delegates.any?
  end

  def basics_complete?
    true
  end

  def ceremony_complete?
    true
  end

  def business_selection_complete?
    true
  end

  def messages_complete?
    true
  end

  def social_media_complete?
    false
  end

  def banking_complete?
    false
  end

  def insurance_complete?
    false
  end

  def subscriptions_complete?
    false
  end

  def my_will_complete?
    false
  end
end
