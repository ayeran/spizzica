class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.decimal :price, :decimal, :precision =>7, :scale => 2


      t.timestamps
    end
  end
end
