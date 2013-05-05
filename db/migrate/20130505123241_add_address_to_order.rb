class AddAddressToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :streetprefix, :string
    add_column :orders, :street, :string
    add_column :orders, :building, :string
    add_column :orders, :city, :string
  end
end
