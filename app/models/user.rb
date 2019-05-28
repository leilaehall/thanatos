class User < ApplicationRecord
  has_many :delegates, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :funeral_preferences, dependent: :destroy
  has_many :templates
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
