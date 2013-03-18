class BeersHabtmTastes < ActiveRecord::Migration
  def self.up
    create_table :beers_tastes, :id => false do |t|
      t.references :beer, :taste
    end
  end
 
  def self.down
    drop_table :beers_tastes
  end
end
