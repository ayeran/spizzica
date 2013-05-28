class FoodHabtmIngredients < ActiveRecord::Migration
 def self.up
    create_table :foods_ingredients, :id => false do |t|
    t.references :ingredient, :food
    end
  end
  def self.down
    drop_table :foods_ingredients
  end
end
