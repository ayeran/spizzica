class AddPriceToBeer < ActiveRecord::Migration
  def change
    add_column :beers, :price, :decimal
  end
end
