class BuyersController < ApplicationController
      skip_before_action :authenticate_user!

  def show
  end

    def new

    @order = current_order
    @order_items = @order.order_items
    @buyer = Buyer.new
    @client = @order.clients.new(client_params)
    @client.save
    end

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
    @buyer.update_attributes(buyer_params)
  end

    private


  def buyer_params
    params.require(:buyer).permit(:name, :surname, :address, :postal_code)
  end

  def client_params
    params.require(:client).permit(:name, :surname, :address, :postal_code)
  end


end
