class SandwichesHabtmIngredients < ActiveRecord::Migration
 def self.up
    create_table :ingredients_sandwiches, :id => false do |t|
    t.references :ingredient, :sandwich
    end
  end
  def self.down
    drop_table :ingredients_sandwiches
  end
end
