class DropSocialMediasTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :social_media
  end
end
