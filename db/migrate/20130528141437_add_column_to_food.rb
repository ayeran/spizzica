class AddColumnToFood < ActiveRecord::Migration
  def change
    add_column :foods, :foodcategory_id, :integer
  end
end
