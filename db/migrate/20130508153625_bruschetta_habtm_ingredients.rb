class BruschettaHabtmIngredients < ActiveRecord::Migration
 def self.up
    create_table :bruschetta_ingredients, :id => false do |t|
    t.references :ingredient, :bruschettum
    end
  end
  def self.down
    drop_table :bruschetta_ingredients
  end
end
