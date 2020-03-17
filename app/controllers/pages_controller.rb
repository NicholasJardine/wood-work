class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def about
  end

  def contact
  end

  def sociial_outreach
  end


  def eft_details
    @order = current_order
    @customer = @order.customers.new
  end

  def payments
    @order = current_order
    @buyer = current_buyer
    @client = @order.clients.first
  end

end
