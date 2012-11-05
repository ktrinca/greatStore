class StoreController < ApplicationController
  def index
   @search = Product.search(params[:q])
   @products = @search.result.paginate(:per_page => 2, :page => params[:page])  
   @search.build_condition
   @categories = Category.all
  end
end
