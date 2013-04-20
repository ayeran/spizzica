class AddVolumeToBeer < ActiveRecord::Migration
  def change
    add_column :beers, :volume, :decimal, :precision => 5, :scale => 2
  end
end
