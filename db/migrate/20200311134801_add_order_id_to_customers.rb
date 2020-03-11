class AddOrderIdToCustomers < ActiveRecord::Migration[5.2]
  def change
        add_column :customers, :order_id, :integer
  end
end
