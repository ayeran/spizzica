class RenameUsers < ActiveRecord::Migration
  def change
    rename_table :users, :visitors
  end
end
