class CreateDelegates < ActiveRecord::Migration[5.2]
  def change
    create_table :delegates do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :relationship
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
