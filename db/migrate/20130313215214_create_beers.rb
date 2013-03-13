class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.integer :manufacturer_id
      t.decimal :strength
      t.integer :container_id
      t.integer :lid_id
      t.integer :added_by
      t.integer :updated_by
      t.timestamps
    end
  end
end
