class CreateSocialPlatforms < ActiveRecord::Migration[5.2]
  def change
    create_table :social_platforms do |t|
      t.string :name
      t.boolean :choice
      t.string :username
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
