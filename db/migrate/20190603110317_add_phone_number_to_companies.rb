class AddPhoneNumberToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :phone, :string
  end
end
