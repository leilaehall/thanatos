class AddEmailConfirmToDelegates < ActiveRecord::Migration[5.2]
  def change
    add_column :delegates, :email_confirmed, :boolean, :default => false
    add_column :delegates, :confirm_token, :string
  end
end
