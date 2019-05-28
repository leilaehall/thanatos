class AddSpeakersToFuneralPreferences < ActiveRecord::Migration[5.2]
  def change
    change_table :funeral_preferences do |t|
      t.string :speaker
      t.string :reading
      t.string :charity
    end
  end
end
