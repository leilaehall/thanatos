class AddDateToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :subject, :string
    add_column :messages, :send_date, :string
  end
end
