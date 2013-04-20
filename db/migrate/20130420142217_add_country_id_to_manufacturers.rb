class AddCountryIdToManufacturers < ActiveRecord::Migration
  def change
    add_column :manufacturers, :country_id, :integer
  end
end
