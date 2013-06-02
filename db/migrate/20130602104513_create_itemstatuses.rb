class CreateItemstatuses < ActiveRecord::Migration
  def self.up
    create_table :itemstatuses do |t|
      t.string :name
      t.string :description
      t.timestamps
    end

    Itemstatus.create :id=>1, :name => "disponibile"
    Itemstatus.create :id=>2, :name => "non disponibile"

# once the ITEMSTATUS table is created, let us add a column to ITEM table
# with default value corresponding to "disponibile"
   add_column :items, :itemstatus_id, :integer, :default => 1
   remove_column :items, :status
  end

  def self.down
   add_column :items, :status, :string
   remove_column :items, :itemstatus_id
    drop_table :itemstatuses
  end
end
