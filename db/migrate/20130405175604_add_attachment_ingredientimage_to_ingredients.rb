class AddAttachmentIngredientimageToIngredients < ActiveRecord::Migration
  def self.up
    change_table :ingredients do |t|
      t.attachment :ingredientimage
    end
  end

  def self.down
    drop_attached_file :ingredients, :ingredientimage
  end
end
