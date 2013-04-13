class CreateTrackings < ActiveRecord::Migration
  def change
    create_table :trackings do |t|
      t.references :order
      t.references :status
      t.text :info

      t.timestamps
    end
    add_index :trackings, :order_id
    add_index :trackings, :status_id
  end
end
