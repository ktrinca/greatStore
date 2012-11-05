class Product < ActiveRecord::Base
  default_scope :order => 'title'
  belongs_to:category
  attr_accessible :cost_price, :picture, :sale_price, :title, :description, :category_id
  validates :title, :description, :picture, :presence => true
  validates :cost_price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :picture, :format => {
    :with=> %r{\.(gif|jpg|png)$}i,
    :message => 'Pueden ser imagenes GIF, JPG or PNG.'
  }
  mount_uploader :picture, PictureUploader
end
