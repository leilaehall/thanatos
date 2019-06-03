class FuneralPreference < ApplicationRecord
  belongs_to :user
  has_many :company_preferences, dependent: :destroy
  has_many :companies, through: :company_preferences
end
