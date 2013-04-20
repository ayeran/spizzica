class AddPriceToBeer < ActiveRecord::Migration
  def change
    add_column :beers, :price, :decimal, :precision => 5, :scale => 2
  end
end
