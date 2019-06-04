class ChangeColumnInSocialMedia < ActiveRecord::Migration[5.2]
  def change
    rename_column :social_platforms, :name, :channel
  end
end
