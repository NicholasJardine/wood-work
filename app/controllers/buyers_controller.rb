class BuyersController < ApplicationController
      skip_before_action :authenticate_user!

  def show
  end

    def new
      @order = current_order
      @client = Client.new
      @buyer = current_buyer
    end

  def create
  end
end
