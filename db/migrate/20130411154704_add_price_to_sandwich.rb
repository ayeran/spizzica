class AddPriceToSandwich < ActiveRecord::Migration
  def change
    add_column :sandwiches, :price, :decimal
  end
end
