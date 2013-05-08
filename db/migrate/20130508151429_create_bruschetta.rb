class CreateBruschetta < ActiveRecord::Migration
  def change
    create_table :bruschetta do |t|
      t.string :name
      t.decimal :price, :precision =>7, :scale => 2

      t.timestamps
    end
  end
end
