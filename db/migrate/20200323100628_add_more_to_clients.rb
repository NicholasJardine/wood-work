class AddMoreToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :province, :string
    add_column :clients, :city, :string
    add_column :clients, :suburb, :string
  end
end
