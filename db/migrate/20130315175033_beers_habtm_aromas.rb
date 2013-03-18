class BeersHabtmAromas < ActiveRecord::Migration
  def self.up
    create_table :aromas_beers, :id => false do |t|
      t.references :aroma, :beer
    end
  end
 
  def self.down
    drop_table :aromas_beers
  end
end
