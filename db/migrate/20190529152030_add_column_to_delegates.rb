class AddColumnToDelegates < ActiveRecord::Migration[5.2]
  def change
    change_table :delegates do |t|
      t.string :phone_number
    end
  end
end
