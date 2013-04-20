class AddColumnToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :secretPhrase, :string
  end
end
