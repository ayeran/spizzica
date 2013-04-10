class AddIidToItem < ActiveRecord::Migration
  def change
    add_column :items, :iid, :integer
  end
end
