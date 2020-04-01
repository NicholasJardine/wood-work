class AddMoreToBuyers < ActiveRecord::Migration[5.2]
  def change
    add_column :buyers, :province, :string
    add_column :buyers, :city, :string
    add_column :buyers, :suburb, :string
  end
end
