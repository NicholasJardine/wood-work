class AddDetailsToBuyers < ActiveRecord::Migration[5.2]
  def change
    add_column :buyers, :name, :string
    add_column :buyers, :surname, :string
    add_column :buyers, :address, :string
    add_column :buyers, :postal_code, :string
  end
end
