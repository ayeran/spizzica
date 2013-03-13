class AddAddedUpdatedByToBeer < ActiveRecord::Migration
  def change
    add_column :beers, :added_by, :integer
    add_column :beers, :updated_by, :integer
  end
end
