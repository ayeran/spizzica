class AddVolumeToBeer < ActiveRecord::Migration
  def change
    add_column :beers, :volume, :decimal
  end
end
