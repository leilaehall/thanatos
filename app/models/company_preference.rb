class CompanyPreference < ApplicationRecord
  belongs_to :funeral_preference
  belongs_to :company
end
