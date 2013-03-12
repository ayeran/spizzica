class CreateBeerStyles < ActiveRecord::Migration
  def change
    create_table :beer_styles do |t|
      t.string :name
      t.text :description
      t.integer :added_by
      t.integer :updated_by

      t.timestamps
    end
  end
end
