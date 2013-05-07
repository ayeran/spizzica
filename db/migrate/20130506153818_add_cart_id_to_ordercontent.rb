class AddCartIdToOrdercontent < ActiveRecord::Migration
  def change
    add_column :ordercontents, :cart_id, :integer
  end
end
