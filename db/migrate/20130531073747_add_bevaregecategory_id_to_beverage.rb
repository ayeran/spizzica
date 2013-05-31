class AddBevaregecategoryIdToBeverage < ActiveRecord::Migration
  def change
    add_column :beverages, :beveragecategory_id, :integer
  end
end
