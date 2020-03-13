class ChangeSomethingFromtables < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :order_id, :integer
    remove_column :orders, :client_id
  end
end
