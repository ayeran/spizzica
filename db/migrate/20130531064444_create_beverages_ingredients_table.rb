class CreateBeveragesIngredientsTable < ActiveRecord::Migration
 def self.up
    create_table :beverages_ingredients, :id => false do |t|
      t.references :beverage, :ingredient
    end
  end

  def self.down
    drop_table :beverages_ingredients
  end
end
