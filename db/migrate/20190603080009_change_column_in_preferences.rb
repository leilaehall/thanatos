class ChangeColumnInPreferences < ActiveRecord::Migration[5.2]
  def change
    rename_column :funeral_preferences, :donation_to_charity, :collection_for_charity
  end
end
