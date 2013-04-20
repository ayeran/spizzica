class AddPriceToSandwich < ActiveRecord::Migration
  def change
    add_column :sandwiches, :price, :decimal, :precision => 5, :scale => 2
  end
end
