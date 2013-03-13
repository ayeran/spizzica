class CreateFoams < ActiveRecord::Migration
  def change
    create_table :foams do |t|
      t.string :name

      t.timestamps
    end
  end
end
