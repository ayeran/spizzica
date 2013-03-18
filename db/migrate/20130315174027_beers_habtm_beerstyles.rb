class BeersHabtmBeerstyles < ActiveRecord::Migration
  def self.up
    create_table :beers_beerstyles, :id => false do |t|
      t.references :beer, :beerstyle
    end
  end
 
  def self.down
    drop_table :beers_beerstyles
  end
end
