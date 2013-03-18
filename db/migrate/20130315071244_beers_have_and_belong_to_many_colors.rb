class BeersHaveAndBelongToManyColors < ActiveRecord::Migration
  def self.up
    create_table :beers_colors, :id => false do |t|
      t.references :beer, :color
    end
  end
 
  def self.down
    drop_table :beers_colors
  end
end