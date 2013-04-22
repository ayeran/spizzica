class ChangeColumnStrength < ActiveRecord::Migration
  def up
    change_column :beers, :strength, :decimal, :precision =>4, :scale => 2
  end

  def down
    change_column :beers, :strength, :precision =>4, :scale => 0
  end
end
