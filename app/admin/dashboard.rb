ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      #span :class => "blank_slate" do
        #span "Welcome to Active Admin. This is the default dashboard page."
        #small "To add dashboard sections, checkout 'app/admin/dashboards.rb'"
      #end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
      columns do
        column do
          panel "Productos Recientes" do
            table_for Product.order("updated_at desc").limit(5) do
            column "Producto" do |product| 
               link_to product.title, admin_product_path(product)
            end
            column "Precio de venta", :sale_price
            column "Fecha de Actualizacion", :updated_at
          end
           
        end
      end

    end
  end # content
end
