class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :user_id
      t.text :addr
      t.datetime :time
      t.string :status
      t.text :info

      t.timestamps
    end
  end
end
