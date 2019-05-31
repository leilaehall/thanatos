class AddColumnsToFuneralPreferences < ActiveRecord::Migration[5.2]
  def change
    add_column :funeral_preferences, :process, :string
    add_column :funeral_preferences, :display, :string
  end
end
