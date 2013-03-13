class CreateBeerstyles < ActiveRecord::Migration
  def change
    create_table :beerstyles do |t|
      t.string :name

      t.timestamps
    end
  end
end
