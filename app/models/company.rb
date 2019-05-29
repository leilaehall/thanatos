class Company < ApplicationRecord
  has_many :company_preferences
  has_many :funeral_preferences, through: :company_preferences
end
