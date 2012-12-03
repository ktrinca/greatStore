ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    #div :class => "blank_slate_container", :id => "dashboard_default_message" do
      #span :class => "blank_slate" do
        #span "Welcome to Active Admin. This is the default dashboard page."
        #small "To add dashboard sections, checkout 'app/admin/dashboards.rb'"
      #end
    #end

    section "Ultimos Productos" do
      table_for Product.order("updated_at desc").limit(5) do
        column "Producto", :title
        column "Precio de venta", :sale_price
        column :updated_at
        
      end
      strong { link_to "Ver todos los Productos", admin_products_path }
    end
  end # content
end
