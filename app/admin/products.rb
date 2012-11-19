ActiveAdmin.register Product do
 # Create sections on the index screen
  scope :all, :default => true
  
 
 index do
    column "Nombre", :title
    column "Imagen", :picture
    column "Precio de costo", :cost_price
    column "Precio de venta", :sale_price
    column "Categoria", :category
    column "Descripcion", :description
    column "Fecha de actualizacion", :updated_at
    default_actions
 end
 
 

end
