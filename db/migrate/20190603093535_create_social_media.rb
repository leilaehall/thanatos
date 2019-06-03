class CreateSocialMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :social_media do |t|
      t.string :name
      t.boolean :choice
      t.string :username

      t.timestamps
    end
  end
end
