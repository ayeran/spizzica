class CreateOrdercontents < ActiveRecord::Migration
  def change
    create_table :ordercontents do |t|
      t.references :order
      t.references :item
      t.integer :quantity

      t.timestamps
    end
    add_index :ordercontents, :order_id
    add_index :ordercontents, :item_id
  end
end
