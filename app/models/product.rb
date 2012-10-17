class Product < ActiveRecord::Base
  attr_accessible :cost_price, :image_url, :sale_price, :title, :description
end
