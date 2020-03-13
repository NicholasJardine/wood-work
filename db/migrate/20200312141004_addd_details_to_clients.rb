class AdddDetailsToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :name, :string
    add_column :clients, :surname, :string
    add_column :clients, :address, :string
    add_column :clients, :postal_code, :string
    remove_column :buyers, :name
    remove_column :buyers, :surname, :string
    remove_column :buyers, :address, :string
    remove_column :buyers, :postal_code, :string

  end
end
