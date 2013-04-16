class AddReferenceToItems < ActiveRecord::Migration
  def change
    change_table :items do |t|
      t.references :ingredient
    end
  end
end
