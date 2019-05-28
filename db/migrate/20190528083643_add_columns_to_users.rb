class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :religion
      t.string :address
      t.string :scenario
    end
  end
end
