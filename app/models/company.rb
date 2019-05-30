class Company < ApplicationRecord
  has_many :company_preferences
  has_many :funeral_preferences, through: :company_preferences
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
