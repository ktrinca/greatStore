class StoreController < ApplicationController
  def index
   @search = Product.search(params[:q])
   @products = @search.result
   @search.build_condition
   @categories = Category.all
  end
end
