class CreateFoodcategories < ActiveRecord::Migration
  def change
    create_table :foodcategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
