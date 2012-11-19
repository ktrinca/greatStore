class StoreController < ApplicationController
  def index
   @search = Product.ransack(params[:q])
   @products = @search.result
   @search.build_condition
   @categories = Category.all
  end
end
