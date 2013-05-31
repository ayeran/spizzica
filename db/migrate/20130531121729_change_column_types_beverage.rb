class ChangeColumnTypesBeverage < ActiveRecord::Migration
  def up
    change_column :beverages, :strength, :decimal, :precision => 5, :scale => 2
    change_column :beverages, :volume, :decimal, :precision => 5, :scale => 2
  end

  def down
    change_column :beverages, :strength, :decimal
    change_column :beverages, :volume, :decimal
  end
end
