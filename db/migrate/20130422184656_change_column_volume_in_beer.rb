class ChangeColumnVolumeInBeer < ActiveRecord::Migration
  def up
    change_column :beers, :volume, :decimal, :precision =>6, :scale => 2
  end

  def down
    change_column :beers, :volume, :decimal, :precision =>6, :scale => 0
  end
end
