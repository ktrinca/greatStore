class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :products, :image_url, :picture
  end
end
