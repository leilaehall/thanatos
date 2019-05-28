class User < ApplicationRecord
  has_many :delegates
  has_many :messages
  has_many :funeral_preferences
  has_many :templates
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
