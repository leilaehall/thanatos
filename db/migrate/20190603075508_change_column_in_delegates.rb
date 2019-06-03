class ChangeColumnInDelegates < ActiveRecord::Migration[5.2]
  def change
    rename_column :funeral_preferences, :charity, :donation_to_charity
  end
end
