class ChangeColumnPriceInSandwich < ActiveRecord::Migration
  def up
    change_column :sandwiches, :price, :decimal, :precision => 5, :scale => 2
  end

  def down
    change_column :sandwiches, :price, :decimal, :precision => 5, :scale => 0
  end
end
