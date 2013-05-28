class AddAttachmentImagefoodTofoods < ActiveRecord::Migration
  def self.up
    change_table :foods do |t|
      t.attachment :imagefood
    end
  end

  def self.down
    drop_attached_file :foods, :imagefood
  end
end
