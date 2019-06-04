class User < ApplicationRecord
  has_many :delegates, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :funeral_preferences, dependent: :destroy
  has_many :company_preferences, through: :funeral_preferences
  has_many :templates
  has_many :social_platforms, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

# SET UP CONDITIONS FOR DASHBOARD COMPLETION HERE !

  def delegates_complete?
    self.delegates.any?
  end

  def basics_complete?
    self.funeral_preferences.any? && !self.funeral_preferences[0].process.nil?
  end

  def ceremony_complete?
    self.funeral_preferences.any? && !self.funeral_preferences[0].embalming.blank?
  end

  def business_selection_complete?
    self.company_preferences.any?
    # IF ANYTHING IS ENTERED AS COMPANY PREFERENCE, VALIDATE
  end

  def messages_complete?
    self.messages.any?
  end

  def social_media_complete?
    self.social_platforms.any?
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
