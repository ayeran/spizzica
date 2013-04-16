class RemoveReferenceFromItem < ActiveRecord::Migration
  def change
    change_table :items do |t|
      t.remove_references :ingredient
    end
  end
end
