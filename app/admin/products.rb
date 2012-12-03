ActiveAdmin.register Product do
 # Create sections on the index screen
  scope :all, :default => true
  
 
 index do
    column "Nombre", :title
    column "Foto" do |product| 
      link_to image_tag(product.picture, :alt => "product image", :height=>"64px", :width=>"64px"), admin_product_path(product)
    end
    
    column "Precio de costo", :cost_price
    column "Precio de venta", :sale_price
    column "Categoria", :category
    column "Descripcion", :description
    column "Fecha de actualizacion", :updated_at
    default_actions
 end
 
 

end
