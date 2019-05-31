class AddDatesToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :delay_period, :string
  end
end
