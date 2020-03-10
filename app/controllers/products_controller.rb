class ProductsController < ApplicationController
    skip_before_action :authenticate_user!

  def index
    @category = Category.find(params[:id])
    @products = Product.where(category_id: @category.id)
  end

  def show
    @product = Product.find(params[:category_id])
    @order_item = current_order.order_items.new
  end


end
