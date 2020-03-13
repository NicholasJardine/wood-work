class ClientsController < ApplicationController
      skip_before_action :authenticate_user!

  def create
    @order = current_order
    @order_items = @order.order_items
    @buyer = current_buyer
    @client = @order.clients.new(client_params)
    @client.save
    @buyer.save
    session[:buyer_id] = @buyer.id
  end

  def update
    @buyer = current_buyer
    @client = @buyer.client
    @client.update_attributes(client_params)
    @order_items = @order.order_items
  end


  private

  def client_params
    params.require(:client).permit(:buyer_id, :name, :surname, :address, :postal_code)
  end

end
