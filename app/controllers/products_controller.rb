class ProductsController < ApplicationController
    skip_before_action :authenticate_user!

  def index
    @products = Product.where(category_id: @category.id)
    @category = Category.find(params[:id])
  end

  def show
    @product = Product.find(params[:category_id])
    @order_item = current_order.order_items.new
  end


end
