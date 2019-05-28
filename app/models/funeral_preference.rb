class FuneralPreference < ApplicationRecord
  belongs_to :user
  has_many :company_preferences
  has_many :companies, through: :company_preferences
end
