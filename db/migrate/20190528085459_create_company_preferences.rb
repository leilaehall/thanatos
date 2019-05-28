class CreateCompanyPreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :company_preferences do |t|
      t.references :funeral_preference, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
