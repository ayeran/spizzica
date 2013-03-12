class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :type
      t.string :taste
      t.decimal :strength

      t.timestamps
    end
  end
end