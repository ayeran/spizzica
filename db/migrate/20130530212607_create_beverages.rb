class CreateBeverages < ActiveRecord::Migration
  def change
    create_table :beverages do |t|
      t.string :name
      t.decimal :strength
      t.decimal :volume
      t.text :description
      t.references :container
      t.timestamps
    end
  end
end
