module ApplicationHelper

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  # def current_customer
  #   if !session[:customer_id].to_i.nil?
  #     Customer.find(session[:customer_id].to_i)
  #   else
  #     Customer.new
  #   end
  # end
end
