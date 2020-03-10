class CartsController < ApplicationController
    skip_before_action :authenticate_user!

    def show
      @order_items = current_order.order_items
      @order_item = current_order.order_items.new
      @product = @order_items.last.product
      @category = @product.category
    end
end
