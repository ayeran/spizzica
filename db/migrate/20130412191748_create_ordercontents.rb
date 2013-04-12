class CreateOrdercontents < ActiveRecord::Migration
  def change
    create_table :ordercontents, :id=>false do |t|
      t.integer :orderid
      t.integer :itemid
      t.integer :quantity

      t.timestamps
    end
  end
end
