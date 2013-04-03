class AddAttachmentImagebeerToBeers < ActiveRecord::Migration
  def self.up
    change_table :beers do |t|
      t.attachment :imagebeer
    end
  end

  def self.down
    drop_attached_file :beers, :imagebeer
  end
end
