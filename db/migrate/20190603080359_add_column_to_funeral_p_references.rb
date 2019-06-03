class AddColumnToFuneralPReferences < ActiveRecord::Migration[5.2]
  def change
    add_column :funeral_preferences, :further_comments, :string
  end
end
