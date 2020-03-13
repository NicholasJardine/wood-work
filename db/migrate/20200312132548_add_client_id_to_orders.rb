class AddClientIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :client_id, :integer
  end
end
