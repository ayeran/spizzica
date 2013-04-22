class ChangeColumnPriceInBeer < ActiveRecord::Migration
  def up
    change_column :beers, :price, :decimal, :precision =>5, :scale => 2
  end

  def down
    change_column :beers, :price, :decimal, :precision =>5, :scale => 0
  end
end
