class CustomersController < ApplicationController
  skip_before_action :authenticate_user!


  def create
    @order = current_order
    @customer = @order.customers.new(customer_params)
    @customer.save
   session[:order_id] = @order.id
  end


  def show
  end

private

  def customer_params
    params.require(:customer).permit(:full_name, :email, :cell, :shipping_address)
  end

end
