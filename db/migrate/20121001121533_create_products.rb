class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :image_url
      t.decimal :cost_price, :precision => 8, :scale => 2
      t.decimal :sale_price

      t.timestamps
    end
  end
end
