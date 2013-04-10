class RemoveIngredientIdFromItem < ActiveRecord::Migration
  def up
    remove_column :items, :ingredient_id
  end

  def down
    add_column :items, :ingredient_id, :integer
  end
end
