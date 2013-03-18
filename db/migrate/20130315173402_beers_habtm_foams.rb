class BeersHabtmFoams < ActiveRecord::Migration
  def self.up
    create_table :beers_foams, :id => false do |t|
      t.references :beer, :foam
    end
  end
 
  def self.down
    drop_table :beers_foams
  end
end
