class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :aroma
      t.integer :flavor
      t.string :foam
      t.string :color
      t.decimal :strength

      t.timestamps
    end
  end
end
