class AddPriceToBeverage < ActiveRecord::Migration
  def change
    add_column :beverages, :price, :decimal, :precision => 5, :scale => 2
  end
end
