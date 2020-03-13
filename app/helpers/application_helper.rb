module ApplicationHelper

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  # def current_client
  #   if !session[:client_id].nil?
  #     Client.find(session[:customer_id])
  #   else
  #     Client.new
  #   end
  # end

    def current_buyer
    if !session[:buyer_id].nil?
      Buyer.find(session[:buyer_id])
    else
      Buyer.create
    end
  end


end
