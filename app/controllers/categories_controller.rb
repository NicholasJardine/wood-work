class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @products = Product.where(category_id: @category.id)
  end

    def home
    @categories = Category.where(main: 'home')
  end

    def garden
    @categories = Category.where(main: 'garden')
  end

    def art
    @categories = Category.where(main: 'art')
  end
end
