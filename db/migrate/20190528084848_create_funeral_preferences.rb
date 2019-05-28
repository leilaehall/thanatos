class CreateFuneralPreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :funeral_preferences do |t|
      t.string :category
      t.string :address
      t.string :guest_list
      t.string :music
      t.string :car
      t.string :details
      t.string :dress
      t.string :hairstyle
      t.boolean :embalming
      t.string :make_up
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
