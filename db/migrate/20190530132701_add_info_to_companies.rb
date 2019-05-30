class AddInfoToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :company_email, :string
    add_column :companies, :description, :string
  end
end
