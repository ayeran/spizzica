class CreateLids < ActiveRecord::Migration
  def change
    create_table :lids do |t|
      t.string :name

      t.timestamps
    end
  end
end
